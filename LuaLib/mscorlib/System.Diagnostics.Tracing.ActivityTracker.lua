---@class System.Diagnostics.Tracing.ActivityTracker : System.Object
---@field public Instance System.Diagnostics.Tracing.ActivityTracker @static
local m = {}

---@param providerName string
---@param activityName string
---@param task number
---@param activityId System.Guid
---@param relatedActivityId System.Guid
---@param options System.Diagnostics.Tracing.EventActivityOptions
---@return System.Guid, System.Guid
function m:OnStart(providerName, activityName, task, activityId, relatedActivityId, options) end

---@param providerName string
---@param activityName string
---@param task number
---@param activityId System.Guid
---@return System.Guid
function m:OnStop(providerName, activityName, task, activityId) end

function m:Enable() end

System.Diagnostics.Tracing.ActivityTracker = m
return m
