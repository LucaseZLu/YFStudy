---@class UnityEngine.Rendering.VisibleReflectionProbe : System.ValueType
---@field public texture UnityEngine.Texture
---@field public reflectionProbe UnityEngine.ReflectionProbe
---@field public bounds UnityEngine.Bounds
---@field public localToWorldMatrix UnityEngine.Matrix4x4
---@field public hdrData UnityEngine.Vector4
---@field public center UnityEngine.Vector3
---@field public blendDistance number
---@field public importance number
---@field public isBoxProjection boolean
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.VisibleReflectionProbe
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.VisibleReflectionProbe
---@param right UnityEngine.Rendering.VisibleReflectionProbe
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.VisibleReflectionProbe
---@param right UnityEngine.Rendering.VisibleReflectionProbe
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.VisibleReflectionProbe = m
return m
