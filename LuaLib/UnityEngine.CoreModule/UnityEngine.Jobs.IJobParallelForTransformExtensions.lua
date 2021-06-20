---@class UnityEngine.Jobs.IJobParallelForTransformExtensions : System.Object
local m = {}

---@overload fun(jobData:System.ValueType, transforms:UnityEngine.Jobs.TransformAccessArray): @static
---@static
---@param jobData System.ValueType
---@param transforms UnityEngine.Jobs.TransformAccessArray
---@param dependsOn Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function m.Schedule(jobData, transforms, dependsOn) end

---@overload fun(jobData:System.ValueType, transforms:UnityEngine.Jobs.TransformAccessArray, batchSize:number): @static
---@static
---@param jobData System.ValueType
---@param transforms UnityEngine.Jobs.TransformAccessArray
---@param batchSize number
---@param dependsOn Unity.Jobs.JobHandle
---@return Unity.Jobs.JobHandle
function m.ScheduleReadOnly(jobData, transforms, batchSize, dependsOn) end

---@static
---@param jobData System.ValueType
---@param transforms UnityEngine.Jobs.TransformAccessArray
function m.RunReadOnly(jobData, transforms) end

UnityEngine.Jobs.IJobParallelForTransformExtensions = m
return m
