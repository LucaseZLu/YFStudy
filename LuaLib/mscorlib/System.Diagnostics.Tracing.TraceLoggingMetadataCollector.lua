---@class System.Diagnostics.Tracing.TraceLoggingMetadataCollector : System.Object
local m = {}

---@param name string
---@return System.Diagnostics.Tracing.TraceLoggingMetadataCollector
function m:AddGroup(name) end

---@param name string
---@param type System.Diagnostics.Tracing.TraceLoggingDataType
function m:AddScalar(name, type) end

---@param name string
---@param type System.Diagnostics.Tracing.TraceLoggingDataType
function m:AddBinary(name, type) end

---@param name string
---@param type System.Diagnostics.Tracing.TraceLoggingDataType
function m:AddArray(name, type) end

function m:BeginBufferedArray() end

function m:EndBufferedArray() end

---@param name string
---@param type System.Diagnostics.Tracing.TraceLoggingDataType
---@param metadata string
function m:AddCustom(name, type, metadata) end

System.Diagnostics.Tracing.TraceLoggingMetadataCollector = m
return m
