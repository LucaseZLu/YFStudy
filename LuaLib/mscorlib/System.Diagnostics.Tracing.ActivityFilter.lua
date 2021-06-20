---@class System.Diagnostics.Tracing.ActivityFilter : System.Object
local m = {}

---@static
---@param filterList System.Diagnostics.Tracing.ActivityFilter
---@param source System.Diagnostics.Tracing.EventSource
---@return System.Diagnostics.Tracing.ActivityFilter
function m.DisableFilter(filterList, source) end

---@static
---@param filterList System.Diagnostics.Tracing.ActivityFilter
---@param source System.Diagnostics.Tracing.EventSource
---@param perEventSourceSessionId number
---@param startEvents string
---@return System.Diagnostics.Tracing.ActivityFilter
function m.UpdateFilter(filterList, source, perEventSourceSessionId, startEvents) end

---@static
---@param filterList System.Diagnostics.Tracing.ActivityFilter
---@param source System.Diagnostics.Tracing.EventSource
---@return System.Diagnostics.Tracing.ActivityFilter
function m.GetFilter(filterList, source) end

---@static
---@param filterList System.Diagnostics.Tracing.ActivityFilter
---@param childActivityID System.Guid*
---@param triggeringEvent boolean
---@param source System.Diagnostics.Tracing.EventSource
---@param eventId number
---@return boolean
function m.PassesActivityFilter(filterList, childActivityID, triggeringEvent, source, eventId) end

---@static
---@param filterList System.Diagnostics.Tracing.ActivityFilter
---@return boolean
function m.IsCurrentActivityActive(filterList) end

---@static
---@param filterList System.Diagnostics.Tracing.ActivityFilter
---@param currentActivityId System.Guid*
---@param childActivityID System.Guid*
function m.FlowActivityIfNeeded(filterList, currentActivityId, childActivityID) end

---@static
---@param activityFilter System.Diagnostics.Tracing.ActivityFilter
---@param sourceGuid System.Guid
---@param source System.Diagnostics.Tracing.EventSource
---@param sessKeywords System.Diagnostics.Tracing.EventKeywords
function m.UpdateKwdTriggers(activityFilter, sourceGuid, source, sessKeywords) end

---@param sourceGuid System.Guid
---@return System.Collections.Generic.IEnumerable_1_System_Tuple_2_System_Int32_System_Int32__
function m:GetFilterAsTuple(sourceGuid) end

---@virtual
function m:Dispose() end

System.Diagnostics.Tracing.ActivityFilter = m
return m
