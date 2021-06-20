---@class UnityEngine.Rendering.VertexAttributeDescriptor : System.ValueType
---@field public attribute UnityEngine.Rendering.VertexAttribute
---@field public format UnityEngine.Rendering.VertexAttributeFormat
---@field public dimension number
---@field public stream number
local m = {}

---@virtual
---@return string
function m:ToString() end

---@virtual
---@return number
function m:GetHashCode() end

---@overload fun(other:UnityEngine.Rendering.VertexAttributeDescriptor): @virtual
---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@static
---@param lhs UnityEngine.Rendering.VertexAttributeDescriptor
---@param rhs UnityEngine.Rendering.VertexAttributeDescriptor
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.Rendering.VertexAttributeDescriptor
---@param rhs UnityEngine.Rendering.VertexAttributeDescriptor
---@return boolean
function m.op_Inequality(lhs, rhs) end

UnityEngine.Rendering.VertexAttributeDescriptor = m
return m
