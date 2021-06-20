---@class UnityEngine.BoneWeight1 : System.ValueType
---@field public weight number
---@field public boneIndex number
local m = {}

---@overload fun(other:UnityEngine.BoneWeight1): @virtual
---@virtual
---@param other any
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param lhs UnityEngine.BoneWeight1
---@param rhs UnityEngine.BoneWeight1
---@return boolean
function m.op_Equality(lhs, rhs) end

---@static
---@param lhs UnityEngine.BoneWeight1
---@param rhs UnityEngine.BoneWeight1
---@return boolean
function m.op_Inequality(lhs, rhs) end

UnityEngine.BoneWeight1 = m
return m
