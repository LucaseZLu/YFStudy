---@class System.Diagnostics.Tracing.FieldMetadata : System.Object
local m = {}

function m:IncrementStructFieldCount() end

---@param pos System.Int32
---@param metadata string
---@return System.Int32
function m:Encode(pos, metadata) end

System.Diagnostics.Tracing.FieldMetadata = m
return m
