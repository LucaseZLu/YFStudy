---@class Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics : System.Object
local m = {}

---@static
---@return boolean
function m.IsEnabled() end

---@static
function m.ClearCompletedMetrics() end

---@overload fun(outMetrics:Unity.IO.LowLevel.Unsafe.AsyncReadManagerRequestMetric[], filters:Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters, flags:Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.Flags) @static
---@overload fun(flags:Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.Flags): @static
---@overload fun(outMetrics:Unity.IO.LowLevel.Unsafe.AsyncReadManagerRequestMetric[], flags:Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.Flags) @static
---@static
---@param filters Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters
---@param flags Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.Flags
---@return Unity.IO.LowLevel.Unsafe.AsyncReadManagerRequestMetric[]
function m.GetMetrics(filters, flags) end

---@static
function m.StartCollectingMetrics() end

---@static
function m.StopCollectingMetrics() end

---@overload fun(metricsFilters:Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters, flags:Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.Flags): @static
---@static
---@param flags Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics.Flags
---@return Unity.IO.LowLevel.Unsafe.AsyncReadManagerSummaryMetrics
function m.GetCurrentSummaryMetrics(flags) end

---@overload fun(metrics:Unity.IO.LowLevel.Unsafe.AsyncReadManagerRequestMetric[]): @static
---@overload fun(metrics:Unity.IO.LowLevel.Unsafe.AsyncReadManagerRequestMetric[], metricsFilters:Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters): @static
---@overload fun(metrics:Unity.IO.LowLevel.Unsafe.AsyncReadManagerRequestMetric[], metricsFilters:Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters): @static
---@static
---@param metrics Unity.IO.LowLevel.Unsafe.AsyncReadManagerRequestMetric[]
---@return Unity.IO.LowLevel.Unsafe.AsyncReadManagerSummaryMetrics
function m.GetSummaryOfMetrics(metrics) end

---@static
---@param emptyAfterRead boolean
---@return number
function m.GetTotalSizeOfNonASRMReadsBytes(emptyAfterRead) end

Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetrics = m
return m
