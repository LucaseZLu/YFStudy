---@class Unity.Profiling.ProfilerRecorder : System.ValueType
---@field public Valid boolean
---@field public DataType Unity.Profiling.LowLevel.ProfilerMarkerDataType
---@field public UnitType Unity.Profiling.ProfilerMarkerDataUnit
---@field public CurrentValue number
---@field public CurrentValueAsDouble number
---@field public LastValue number
---@field public LastValueAsDouble number
---@field public Capacity number
---@field public Count number
---@field public IsRunning boolean
---@field public WrappedAround boolean
local m = {}

---@overload fun(category:Unity.Profiling.ProfilerCategory, statName:string, capacity:number): @static
---@overload fun(category:Unity.Profiling.ProfilerCategory, statName:string): @static
---@overload fun(marker:Unity.Profiling.ProfilerMarker, capacity:number, options:Unity.Profiling.ProfilerRecorderOptions): @static
---@overload fun(marker:Unity.Profiling.ProfilerMarker, capacity:number): @static
---@overload fun(marker:Unity.Profiling.ProfilerMarker): @static
---@static
---@param category Unity.Profiling.ProfilerCategory
---@param statName string
---@param capacity number
---@param options Unity.Profiling.ProfilerRecorderOptions
---@return Unity.Profiling.ProfilerRecorder
function m.StartNew(category, statName, capacity, options) end

function m:Start() end

function m:Stop() end

function m:Reset() end

---@param index number
---@return Unity.Profiling.ProfilerRecorderSample
function m:GetSample(index) end

---@overload fun(outSamples:Unity.Profiling.ProfilerRecorderSample[])
---@overload fun(dest:Unity.Profiling.ProfilerRecorderSample*, destSize:number, reset:boolean):
---@overload fun(dest:Unity.Profiling.ProfilerRecorderSample*, destSize:number):
---@param outSamples Unity.Profiling.ProfilerRecorderSample[]
---@param reset boolean
function m:CopyTo(outSamples, reset) end

---@return Unity.Profiling.ProfilerRecorderSample[]
function m:ToArray() end

---@virtual
function m:Dispose() end

Unity.Profiling.ProfilerRecorder = m
return m
