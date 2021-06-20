---@class Unity.Jobs.IJobForExtensions : System.Object
local m = {}

---@static
---@param jobData System.ValueType
---@param arrayLength number
---@param dependency Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function m.Schedule(jobData, arrayLength, dependency) end

---@static
---@param jobData System.ValueType
---@param arrayLength number
---@param innerloopBatchCount number
---@param dependency Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function m.ScheduleParallel(jobData, arrayLength, innerloopBatchCount, dependency) end

---@static
---@param jobData System.ValueType
---@param arrayLength number
function m.Run(jobData, arrayLength) end

Unity.Jobs.IJobForExtensions = m
return m
