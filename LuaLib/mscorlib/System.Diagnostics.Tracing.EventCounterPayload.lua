---@class System.Diagnostics.Tracing.EventCounterPayload : System.Object
---@field public Name string
---@field public Mean number
---@field public StandardDeviation number
---@field public Count number
---@field public Min number
---@field public Max number
---@field public IntervalSec number
local m = {}

---@virtual
---@return System.Collections.Generic.IEnumerator_1_System_Collections_Generic_KeyValuePair_2_System_String_System_Object__
function m:GetEnumerator() end

System.Diagnostics.Tracing.EventCounterPayload = m
return m
