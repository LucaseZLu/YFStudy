---@class Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility : System.Object
---@field public CategoryRender number @static
---@field public CategoryScripts number @static
---@field public CategoryGUI number @static
---@field public CategoryPhysics number @static
---@field public CategoryAnimation number @static
---@field public CategoryAi number @static
---@field public CategoryAudio number @static
---@field public CategoryVideo number @static
---@field public CategoryParticles number @static
---@field public CategoryLighting number @static
---@field public CategoryLightning number @static
---@field public CategoryNetwork number @static
---@field public CategoryLoading number @static
---@field public CategoryOther number @static
---@field public CategoryVr number @static
---@field public CategoryAllocation number @static
---@field public CategoryInternal number @static
---@field public CategoryInput number @static
---@field public CategoryVirtualTexturing number @static
---@field public Timestamp number @static
---@field public TimestampToNanosecondsConversionRatio Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility.TimestampConversionRatio @static
local m = {}

---@static
---@param name System.Char*
---@param nameLen number
---@return number
function m.GetCategoryByName(name, nameLen) end

---@static
---@param categoryId number
---@return Unity.Profiling.LowLevel.Unsafe.ProfilerCategoryDescription
function m.GetCategoryDescription(categoryId) end

---@overload fun(name:System.Char*, nameLen:number, categoryId:number, flags:Unity.Profiling.LowLevel.MarkerFlags, metadataCount:number): @static
---@static
---@param name string
---@param categoryId number
---@param flags Unity.Profiling.LowLevel.MarkerFlags
---@param metadataCount number
---@return System.IntPtr
function m.CreateMarker(name, categoryId, flags, metadataCount) end

---@overload fun(markerPtr:System.IntPtr, index:number, name:System.Char*, nameLen:number, type:number, unit:number) @static
---@static
---@param markerPtr System.IntPtr
---@param index number
---@param name string
---@param type number
---@param unit number
function m.SetMarkerMetadata(markerPtr, index, name, type, unit) end

---@static
---@param markerPtr System.IntPtr
function m.BeginSample(markerPtr) end

---@static
---@param markerPtr System.IntPtr
---@param metadataCount number
---@param metadata System.Void*
function m.BeginSampleWithMetadata(markerPtr, metadataCount, metadata) end

---@static
---@param markerPtr System.IntPtr
function m.EndSample(markerPtr) end

---@static
---@param markerPtr System.IntPtr
---@param metadataCount number
---@param metadata System.Void*
function m.SingleSampleWithMetadata(markerPtr, metadataCount, metadata) end

---@overload fun(name:System.Char*, nameLen:number, categoryId:number, flags:Unity.Profiling.LowLevel.MarkerFlags, dataType:number, dataUnit:number, dataSize:number, counterOptions:Unity.Profiling.ProfilerCounterOptions):(, System.IntPtr) @static
---@static
---@param name string
---@param categoryId number
---@param flags Unity.Profiling.LowLevel.MarkerFlags
---@param dataType number
---@param dataUnit number
---@param dataSize number
---@param counterOptions Unity.Profiling.ProfilerCounterOptions
---@return System.Void*, System.IntPtr
function m.CreateCounterValue(name, categoryId, flags, dataType, dataUnit, dataSize, counterOptions) end

---@static
---@param counterValuePtr System.Void*
function m.FlushCounterValue(counterValuePtr) end

---@static
---@param categoryId number
---@return number
function m.CreateFlow(categoryId) end

---@static
---@param flowId number
---@param flowEventType Unity.Profiling.ProfilerFlowEventType
function m.FlowEvent(flowId, flowEventType) end

Unity.Profiling.LowLevel.Unsafe.ProfilerUnsafeUtility = m
return m
