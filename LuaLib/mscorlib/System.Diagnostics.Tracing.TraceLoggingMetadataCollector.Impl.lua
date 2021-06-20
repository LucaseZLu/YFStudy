---@class System.Diagnostics.Tracing.TraceLoggingMetadataCollector.Impl : System.Object
local m = {}

---@param size number
function m:AddScalar(size) end

function m:AddNonscalar() end

function m:BeginBuffered() end

function m:EndBuffered() end

---@param metadata string
---@return number
function m:Encode(metadata) end

System.Diagnostics.Tracing.TraceLoggingMetadataCollector.Impl = m
return m
