---@class UnityEngine.Rendering.VisibleLight : System.ValueType
---@field public light UnityEngine.Light
---@field public lightType UnityEngine.LightType
---@field public finalColor UnityEngine.Color
---@field public screenRect UnityEngine.Rect
---@field public localToWorldMatrix UnityEngine.Matrix4x4
---@field public range number
---@field public spotAngle number
---@field public intersectsNearPlane boolean
---@field public intersectsFarPlane boolean
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.VisibleLight
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.VisibleLight
---@param right UnityEngine.Rendering.VisibleLight
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.VisibleLight
---@param right UnityEngine.Rendering.VisibleLight
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.VisibleLight = m
return m
