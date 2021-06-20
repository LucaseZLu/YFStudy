---@class System.Diagnostics.Tracing.TraceLoggingTypeInfo : System.Object
---@field public Name string
---@field public Level System.Diagnostics.Tracing.EventLevel
---@field public Opcode System.Diagnostics.Tracing.EventOpcode
---@field public Keywords System.Diagnostics.Tracing.EventKeywords
---@field public Tags System.Diagnostics.Tracing.EventTags
local m = {}

---@abstract
---@param collector System.Diagnostics.Tracing.TraceLoggingMetadataCollector
---@param name string
---@param format System.Diagnostics.Tracing.EventFieldFormat
function m:WriteMetadata(collector, name, format) end

---@abstract
---@param collector System.Diagnostics.Tracing.TraceLoggingDataCollector
---@param value any
function m:WriteObjectData(collector, value) end

---@virtual
---@param value any
---@return any
function m:GetData(value) end

System.Diagnostics.Tracing.TraceLoggingTypeInfo = m
return m
