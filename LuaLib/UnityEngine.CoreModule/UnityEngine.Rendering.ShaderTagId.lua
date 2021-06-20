---@class UnityEngine.Rendering.ShaderTagId : System.ValueType
---@field public none UnityEngine.Rendering.ShaderTagId @static
---@field public name string
local m = {}

---@overload fun(other:UnityEngine.Rendering.ShaderTagId): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param tag1 UnityEngine.Rendering.ShaderTagId
---@param tag2 UnityEngine.Rendering.ShaderTagId
---@return boolean
function m.op_Equality(tag1, tag2) end

---@static
---@param tag1 UnityEngine.Rendering.ShaderTagId
---@param tag2 UnityEngine.Rendering.ShaderTagId
---@return boolean
function m.op_Inequality(tag1, tag2) end

---@overload fun(tagId:UnityEngine.Rendering.ShaderTagId): @static
---@static
---@param name string
---@return UnityEngine.Rendering.ShaderTagId
function m.op_Explicit(name) end

UnityEngine.Rendering.ShaderTagId = m
return m
