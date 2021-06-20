---@class UnityEngine.Profiling.Profiler : System.Object
---@field public supported boolean @static
---@field public logFile string @static
---@field public enableBinaryLog boolean @static
---@field public maxUsedMemory number @static
---@field public enabled boolean @static
---@field public enableAllocationCallstacks boolean @static
---@field public areaCount number @static
---@field public maxNumberOfSamplesPerFrame number @static
---@field public usedHeapSize number @static
---@field public usedHeapSizeLong number @static
local m = {}

---@static
---@param area UnityEngine.Profiling.ProfilerArea
---@param enabled boolean
function m.SetAreaEnabled(area, enabled) end

---@static
---@param area UnityEngine.Profiling.ProfilerArea
---@return boolean
function m.GetAreaEnabled(area) end

---@static
---@param file string
function m.AddFramesFromFile(file) end

---@static
---@param threadGroupName string
---@param threadName string
function m.BeginThreadProfiling(threadGroupName, threadName) end

---@static
function m.EndThreadProfiling() end

---@overload fun(name:string, targetObject:UnityEngine.Object) @static
---@static
---@param name string
function m.BeginSample(name) end

---@static
function m.EndSample() end

---@static
---@param o UnityEngine.Object
---@return number
function m.GetRuntimeMemorySize(o) end

---@static
---@param o UnityEngine.Object
---@return number
function m.GetRuntimeMemorySizeLong(o) end

---@static
---@return number
function m.GetMonoHeapSize() end

---@static
---@return number
function m.GetMonoHeapSizeLong() end

---@static
---@return number
function m.GetMonoUsedSize() end

---@static
---@return number
function m.GetMonoUsedSizeLong() end

---@static
---@param size number
---@return boolean
function m.SetTempAllocatorRequestedSize(size) end

---@static
---@return number
function m.GetTempAllocatorSize() end

---@static
---@return number
function m.GetTotalAllocatedMemory() end

---@static
---@return number
function m.GetTotalAllocatedMemoryLong() end

---@static
---@return number
function m.GetTotalUnusedReservedMemory() end

---@static
---@return number
function m.GetTotalUnusedReservedMemoryLong() end

---@static
---@return number
function m.GetTotalReservedMemory() end

---@static
---@return number
function m.GetTotalReservedMemoryLong() end

---@static
---@param stats Unity.Collections.NativeArray_1_System_Int32_
---@return number
function m.GetTotalFragmentationInfo(stats) end

---@static
---@return number
function m.GetAllocatedMemoryForGraphicsDriver() end

---@overload fun(id:System.Guid, tag:number, data:System.ValueType[]) @static
---@overload fun(id:System.Guid, tag:number, data:System.ValueType) @static
---@static
---@param id System.Guid
---@param tag number
---@param data System.Array
function m.EmitFrameMetaData(id, tag, data) end

UnityEngine.Profiling.Profiler = m
return m
