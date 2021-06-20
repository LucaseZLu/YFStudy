---@class Microsoft.Reflection.ReflectionExtensions : System.Object
local m = {}

---@static
---@param type System.Type
---@return boolean
function m.IsEnum(type) end

---@static
---@param type System.Type
---@return boolean
function m.IsAbstract(type) end

---@static
---@param type System.Type
---@return boolean
function m.IsSealed(type) end

---@static
---@param type System.Type
---@return System.Type
function m.BaseType(type) end

---@static
---@param type System.Type
---@return System.Reflection.Assembly
function m.Assembly(type) end

---@static
---@param type System.Type
---@return System.TypeCode
function m.GetTypeCode(type) end

---@static
---@param assm System.Reflection.Assembly
---@return boolean
function m.ReflectionOnly(assm) end

Microsoft.Reflection.ReflectionExtensions = m
return m
