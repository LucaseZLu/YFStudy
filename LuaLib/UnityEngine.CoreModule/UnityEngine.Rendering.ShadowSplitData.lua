---@class UnityEngine.Rendering.ShadowSplitData : System.ValueType
---@field public maximumCullingPlaneCount number @static
---@field public cullingPlaneCount number
---@field public cullingSphere UnityEngine.Vector4
---@field public shadowCascadeBlendCullingFactor number
local m = {}

---@param index number
---@return UnityEngine.Plane
function m:GetCullingPlane(index) end

---@param index number
---@param plane UnityEngine.Plane
function m:SetCullingPlane(index, plane) end

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.ShadowSplitData
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.ShadowSplitData
---@param right UnityEngine.Rendering.ShadowSplitData
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.ShadowSplitData
---@param right UnityEngine.Rendering.ShadowSplitData
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.ShadowSplitData = m
return m
