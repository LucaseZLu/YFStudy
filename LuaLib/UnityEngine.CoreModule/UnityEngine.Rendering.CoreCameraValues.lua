---@class UnityEngine.Rendering.CoreCameraValues : System.ValueType
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.CoreCameraValues
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.CoreCameraValues
---@param right UnityEngine.Rendering.CoreCameraValues
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.CoreCameraValues
---@param right UnityEngine.Rendering.CoreCameraValues
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.CoreCameraValues = m
return m
