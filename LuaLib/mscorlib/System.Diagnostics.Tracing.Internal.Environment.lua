---@class System.Diagnostics.Tracing.Internal.Environment : System.Object
---@field public NewLine string @static
---@field public TickCount number @static
local m = {}

---@overload fun(key:string): @static
---@static
---@param key string
---@param ... any|any[]
---@return string
function m.GetResourceString(key, ...) end

---@overload fun(key:string): @static
---@static
---@param key string
---@param ... any|any[]
---@return string
function m.GetRuntimeResourceString(key, ...) end

System.Diagnostics.Tracing.Internal.Environment = m
return m
