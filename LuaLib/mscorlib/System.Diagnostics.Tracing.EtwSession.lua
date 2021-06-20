---@class System.Diagnostics.Tracing.EtwSession : System.Object
---@field public m_etwSessionId number
---@field public m_activityFilter System.Diagnostics.Tracing.ActivityFilter
local m = {}

---@overload fun(etwSessionId:number): @static
---@static
---@param etwSessionId number
---@param bCreateIfNeeded boolean
---@return System.Diagnostics.Tracing.EtwSession
function m.GetEtwSession(etwSessionId, bCreateIfNeeded) end

---@static
---@param etwSession System.Diagnostics.Tracing.EtwSession
function m.RemoveEtwSession(etwSession) end

System.Diagnostics.Tracing.EtwSession = m
return m
