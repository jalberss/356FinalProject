---- MODULE MC ----
EXTENDS TLABarrier, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a1, a2, a3
----

\* MV CONSTANT definitions threads
const_15530366628818000 == 
{a1, a2, a3}
----

\* CONSTANT definitions @modelParameterConstants:1num_threads
const_15530366628819000 == 
3
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_155303666288210000 ==
Spec
----
=============================================================================
\* Modification History
\* Created Tue Mar 19 16:04:22 PDT 2019 by JAlbers
