---- MODULE MC ----
EXTENDS TLABarrier, TLC

\* MV CONSTANT declarations@modelParameterConstants
CONSTANTS
a1, a2, a3
----

\* MV CONSTANT definitions threads
const_155303673346620000 == 
{a1, a2, a3}
----

\* CONSTANT definitions @modelParameterConstants:1num_threads
const_155303673346621000 == 
3
----

\* SPECIFICATION definition @modelBehaviorSpec:0
spec_155303673346622000 ==
Spec
----
=============================================================================
\* Modification History
\* Created Tue Mar 19 16:05:33 PDT 2019 by JAlbers
