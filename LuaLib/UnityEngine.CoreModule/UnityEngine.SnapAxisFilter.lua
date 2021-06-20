---@class UnityEngine.SnapAxisFilter : System.ValueType
---@field public all UnityEngine.SnapAxisFilter @static
---@field public x number
---@field public y number
---@field public z number
---@field public active number
---@field public Item number
local m = {}

---@virtual
---@return string
function m:ToString() end

---@static
---@param mask UnityEngine.SnapAxisFilter
---@return UnityEngine.Vector3
function m.op_Implicit(mask) end

---@overload fun(mask:UnityEngine.SnapAxisFilter): @static
---@static
---@param v UnityEngine.Vector3
---@return UnityEngine.SnapAxisFilter
function m.op_Explicit(v) end

---@static
---@param left UnityEngine.SnapAxisFilter
---@param right UnityEngine.SnapAxisFilter
---@return UnityEngine.SnapAxisFilter
function m.op_BitwiseOr(left, right) end

---@static
---@param left UnityEngine.SnapAxisFilter
---@param right UnityEngine.SnapAxisFilter
---@return UnityEngine.SnapAxisFilter
function m.op_BitwiseAnd(left, right) end

---@static
---@param left UnityEngine.SnapAxisFilter
---@param right UnityEngine.SnapAxisFilter
---@return UnityEngine.SnapAxisFilter
function m.op_ExclusiveOr(left, right) end

---@static
---@param left UnityEngine.SnapAxisFilter
---@return UnityEngine.SnapAxisFilter
function m.op_OnesComplement(left) end

---@overload fun(mask:UnityEngine.SnapAxisFilter, right:UnityEngine.Vector3): @static
---@overload fun(rotation:UnityEngine.Quaternion, mask:UnityEngine.SnapAxisFilter): @static
---@static
---@param mask UnityEngine.SnapAxisFilter
---@param value number
---@return UnityEngine.Vector3
function m.op_Multiply(mask, value) end

---@static
---@param left UnityEngine.SnapAxisFilter
---@param right UnityEngine.SnapAxisFilter
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.SnapAxisFilter
---@param right UnityEngine.SnapAxisFilter
---@return boolean
function m.op_Inequality(left, right) end

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.SnapAxisFilter
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

UnityEngine.SnapAxisFilter = m
return m
