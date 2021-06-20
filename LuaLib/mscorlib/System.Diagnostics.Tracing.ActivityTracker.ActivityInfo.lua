---@class System.Diagnostics.Tracing.ActivityTracker.ActivityInfo : System.Object
---@field public ActivityId System.Guid
local m = {}

---@static
---@param activityInfo System.Diagnostics.Tracing.ActivityTracker.ActivityInfo
---@return string
function m.Path(activityInfo) end

---@virtual
---@return string
function m:ToString() end

---@static
---@param list System.Diagnostics.Tracing.ActivityTracker.ActivityInfo
---@return string
function m.LiveActivities(list) end

---@return boolean
function m:CanBeOrphan() end

System.Diagnostics.Tracing.ActivityTracker.ActivityInfo = m
return m
