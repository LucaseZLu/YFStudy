---@class UnityEngine.Profiling.CustomSampler : UnityEngine.Profiling.Sampler
local m = {}

---@overload fun(name:string): @static
---@static
---@param name string
---@param collectGpuData boolean
---@return UnityEngine.Profiling.CustomSampler
function m.Create(name, collectGpuData) end

---@overload fun(targetObject:UnityEngine.Object)
function m:Begin() end

function m:End() end

UnityEngine.Profiling.CustomSampler = m
return m
