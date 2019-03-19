----------------------------- MODULE TLABarrier -----------------------------
EXTENDS Integers

CONSTANT threads, num_threads

VARIABLE TState, n, BState

Init == /\ n = num_threads
        /\ TState = [t \in threads |-> "pre"]
        /\ BState = "init"

First(r) == /\ BState = "init"
            /\ TState \in [threads -> {"pre"}]
            /\ BState' = "stop"
            /\ TState' = [TState EXCEPT ![r] = "at"]
            /\ UNCHANGED<<n>> 
  
AdvanceTo(r) == /\ BState = "stop"
                /\ TState[r] # "at"
                /\ (\E t \in threads : TState[t] # "at")
                /\ TState' = [TState EXCEPT ![r] = "at"]
                /\ UNCHANGED<<n,BState>>

AdvanceToLast(r) == /\ BState = "stop"
                    /\ TState[r] # "at"
                    /\ (\A t \in threads : \/ t = r
                                           \/ TState[t] = "at")
                    /\ TState' = [TState EXCEPT ![r] = "at"]
                    /\ BState' = "pass"
                    /\ UNCHANGED<<n>>
                    
AdvancePast(r) == /\ BState = "pass"
                  /\ TState' = [TState EXCEPT ![r] = "thru"]
                  /\ UNCHANGED<<n>>
                  
Done == TState \in [threads -> {"thru"}]                  
                

TNext(r) == \/ First(r)
            \/ AdvanceTo(r)
            \/ AdvanceToLast(r)
            \/ AdvancePast(r)
            

BarrierNext ==  \/ Done
                \/ (\E t \in threads :  TNext(t))
                
Spec == Init /\ [][BarrierNext]_<<TState,n,BState>>            
              
                             
        
  

=============================================================================
\* Modification History
\* Last modified Tue Mar 19 16:04:15 PDT 2019 by JAlbers
\* Created Tue Mar 19 13:59:26 PDT 2019 by JAlbers
