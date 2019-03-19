---- MODULE MC ----
EXTENDS TLABarrier, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a1, a2, a3
----

\* MV CONSTANT definitions threads
const_155303667394114000 == 
{a1, a2, a3}
----

\* CONSTANT definitions @modelParameterConstants:1num_threads
const_155303667394115000 == 
3
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_155303667394116000 ==
Spec
----
=============================================================================
\* Modification History
\* Created Tue Mar 19 16:04:33 PDT 2019 by JAlbers
