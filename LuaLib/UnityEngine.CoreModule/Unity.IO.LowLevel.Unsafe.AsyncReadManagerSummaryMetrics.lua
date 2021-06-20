---@class Unity.IO.LowLevel.Unsafe.AsyncReadManagerSummaryMetrics : System.Object
---@field public TotalBytesRead number
---@field public AverageBandwidthMBPerSecond number
---@field public AverageReadSizeInBytes number
---@field public AverageWaitTimeMicroseconds number
---@field public AverageReadTimeMicroseconds number
---@field public AverageTotalRequestTimeMicroseconds number
---@field public AverageThroughputMBPerSecond number
---@field public LongestWaitTimeMicroseconds number
---@field public LongestReadTimeMicroseconds number
---@field public LongestReadAssetType number
---@field public LongestWaitAssetType number
---@field public LongestReadSubsystem Unity.IO.LowLevel.Unsafe.AssetLoadingSubsystem
---@field public LongestWaitSubsystem Unity.IO.LowLevel.Unsafe.AssetLoadingSubsystem
---@field public NumberOfInProgressRequests number
---@field public NumberOfCompletedRequests number
---@field public NumberOfFailedRequests number
---@field public NumberOfWaitingRequests number
---@field public NumberOfCanceledRequests number
---@field public TotalNumberOfRequests number
---@field public NumberOfCachedReads number
---@field public NumberOfAsyncReads number
---@field public NumberOfSyncReads number
local m = {}

Unity.IO.LowLevel.Unsafe.AsyncReadManagerSummaryMetrics = m
return m
