---@class UnityEngine.Rendering.CameraProperties : System.ValueType
local m = {}

---@param index number
---@return UnityEngine.Plane
function m:GetShadowCullingPlane(index) end

---@param index number
---@param plane UnityEngine.Plane
function m:SetShadowCullingPlane(index, plane) end

---@param index number
---@return UnityEngine.Plane
function m:GetCameraCullingPlane(index) end

---@param index number
---@param plane UnityEngine.Plane
function m:SetCameraCullingPlane(index, plane) end

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.CameraProperties
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.CameraProperties
---@param right UnityEngine.Rendering.CameraProperties
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.CameraProperties
---@param right UnityEngine.Rendering.CameraProperties
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.CameraProperties = m
return m
