---@class Unity.IO.LowLevel.Unsafe.AsyncReadManagerRequestMetric : System.ValueType
---@field public AssetName string
---@field public FileName string
---@field public OffsetBytes number
---@field public SizeBytes number
---@field public AssetTypeId number
---@field public CurrentBytesRead number
---@field public BatchReadCount number
---@field public IsBatchRead boolean
---@field public State Unity.IO.LowLevel.Unsafe.ProcessingState
---@field public ReadType Unity.IO.LowLevel.Unsafe.FileReadType
---@field public PriorityLevel Unity.IO.LowLevel.Unsafe.Priority
---@field public Subsystem Unity.IO.LowLevel.Unsafe.AssetLoadingSubsystem
---@field public RequestTimeMicroseconds number
---@field public TimeInQueueMicroseconds number
---@field public TotalTimeMicroseconds number
local m = {}

Unity.IO.LowLevel.Unsafe.AsyncReadManagerRequestMetric = m
return m
