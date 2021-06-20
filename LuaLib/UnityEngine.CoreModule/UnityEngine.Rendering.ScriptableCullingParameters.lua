---@class UnityEngine.Rendering.ScriptableCullingParameters : System.ValueType
---@field public maximumCullingPlaneCount number @static
---@field public layerCount number @static
---@field public cullingJobsLowerLimit number @static
---@field public cullingJobsUpperLimit number @static
---@field public maximumVisibleLights number
---@field public cullingPlaneCount number
---@field public isOrthographic boolean
---@field public lodParameters UnityEngine.Rendering.LODParameters
---@field public cullingMask number
---@field public cullingMatrix UnityEngine.Matrix4x4
---@field public origin UnityEngine.Vector3
---@field public shadowDistance number
---@field public cullingOptions UnityEngine.Rendering.CullingOptions
---@field public reflectionProbeSortingCriteria UnityEngine.Rendering.ReflectionProbeSortingCriteria
---@field public cameraProperties UnityEngine.Rendering.CameraProperties
---@field public stereoViewMatrix UnityEngine.Matrix4x4
---@field public stereoProjectionMatrix UnityEngine.Matrix4x4
---@field public stereoSeparationDistance number
---@field public accurateOcclusionThreshold number
---@field public maximumPortalCullingJobs number
local m = {}

---@param layerIndex number
---@return number
function m:GetLayerCullingDistance(layerIndex) end

---@param layerIndex number
---@param distance number
function m:SetLayerCullingDistance(layerIndex, distance) end

---@param index number
---@return UnityEngine.Plane
function m:GetCullingPlane(index) end

---@param index number
---@param plane UnityEngine.Plane
function m:SetCullingPlane(index, plane) end

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.ScriptableCullingParameters
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.ScriptableCullingParameters
---@param right UnityEngine.Rendering.ScriptableCullingParameters
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.ScriptableCullingParameters
---@param right UnityEngine.Rendering.ScriptableCullingParameters
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.ScriptableCullingParameters = m
return m
