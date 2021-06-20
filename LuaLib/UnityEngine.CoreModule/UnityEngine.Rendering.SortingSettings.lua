---@class UnityEngine.Rendering.SortingSettings : System.ValueType
---@field public worldToCameraMatrix UnityEngine.Matrix4x4
---@field public cameraPosition UnityEngine.Vector3
---@field public customAxis UnityEngine.Vector3
---@field public criteria UnityEngine.Rendering.SortingCriteria
---@field public distanceMetric UnityEngine.Rendering.DistanceMetric
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.SortingSettings
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.SortingSettings
---@param right UnityEngine.Rendering.SortingSettings
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.SortingSettings
---@param right UnityEngine.Rendering.SortingSettings
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.SortingSettings = m
return m
