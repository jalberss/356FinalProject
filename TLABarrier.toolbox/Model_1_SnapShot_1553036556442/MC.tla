---- MODULE MC ----
EXTENDS TLABarrier, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a1, a2, a3
----

\* MV CONSTANT definitions threads
const_15530365527615000 == 
{a1, a2, a3}
----

\* CONSTANT definitions @modelParameterConstants:1num_threads
const_15530365527616000 == 
3
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_15530365527617000 ==
Spec
----
=============================================================================
\* Modification History
\* Created Tue Mar 19 16:02:32 PDT 2019 by JAlbers
