---@class Unity.Profiling.LowLevel.Unsafe.ProfilerRecorderHandle : System.ValueType
---@field public Valid boolean
local m = {}

---@static
---@param handle Unity.Profiling.LowLevel.Unsafe.ProfilerRecorderHandle
---@return Unity.Profiling.LowLevel.Unsafe.ProfilerRecorderDescription
function m.GetDescription(handle) end

---@static
---@param outRecorderHandleList Unity.Profiling.LowLevel.Unsafe.ProfilerRecorderHandle[]
function m.GetAvailable(outRecorderHandleList) end

Unity.Profiling.LowLevel.Unsafe.ProfilerRecorderHandle = m
return m
