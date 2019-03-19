---- MODULE MC ----
EXTENDS TLABarrier, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a1, a2, a3
----

\* MV CONSTANT definitions threads
const_155303714904327000 == 
{a1, a2, a3}
----

\* CONSTANT definitions @modelParameterConstants:1num_threads
const_155303714904328000 == 
3
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_155303714904329000 ==
Spec
----
\* INVARIANT definition @modelCorrectnessInvariants:0
inv_155303714904330000 ==
TypeOK
----
=============================================================================
\* Modification History
\* Created Tue Mar 19 16:12:29 PDT 2019 by JAlbers
