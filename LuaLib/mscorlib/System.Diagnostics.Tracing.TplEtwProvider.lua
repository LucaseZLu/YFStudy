---@class System.Diagnostics.Tracing.TplEtwProvider : System.Diagnostics.Tracing.EventSource
---@field public Log System.Diagnostics.Tracing.TplEtwProvider @static
---@field public Debug boolean
local m = {}

---@param Facility string
---@param Message string
function m:DebugFacilityMessage(Facility, Message) end

---@param Facility string
---@param Message string
---@param Arg string
function m:DebugFacilityMessage1(Facility, Message, Arg) end

---@param Id System.Guid
function m:SetActivityId(Id) end

System.Diagnostics.Tracing.TplEtwProvider = m
return m
