---@class Unity.Profiling.LowLevel.Unsafe.ProfilerRecorderDescription : System.ValueType
---@field public Category Unity.Profiling.ProfilerCategory
---@field public Flags Unity.Profiling.LowLevel.MarkerFlags
---@field public DataType Unity.Profiling.LowLevel.ProfilerMarkerDataType
---@field public UnitType Unity.Profiling.ProfilerMarkerDataUnit
---@field public NameUtf8Len number
---@field public NameUtf8 System.Byte*
---@field public Name string
local m = {}

Unity.Profiling.LowLevel.Unsafe.ProfilerRecorderDescription = m
return m
