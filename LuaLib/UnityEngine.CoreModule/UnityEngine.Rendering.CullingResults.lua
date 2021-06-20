---@class UnityEngine.Rendering.CullingResults : System.ValueType
---@field public visibleLights Unity.Collections.NativeArray_1_UnityEngine_Rendering_VisibleLight_
---@field public visibleOffscreenVertexLights Unity.Collections.NativeArray_1_UnityEngine_Rendering_VisibleLight_
---@field public visibleReflectionProbes Unity.Collections.NativeArray_1_UnityEngine_Rendering_VisibleReflectionProbe_
---@field public lightIndexCount number
---@field public reflectionProbeIndexCount number
---@field public lightAndReflectionProbeIndexCount number
local m = {}

---@overload fun(buffer:UnityEngine.GraphicsBuffer)
---@param computeBuffer UnityEngine.ComputeBuffer
function m:FillLightAndReflectionProbeIndices(computeBuffer) end

---@param allocator Unity.Collections.Allocator
---@return Unity.Collections.NativeArray_1_System_Int32_
function m:GetLightIndexMap(allocator) end

---@param lightIndexMap Unity.Collections.NativeArray_1_System_Int32_
function m:SetLightIndexMap(lightIndexMap) end

---@param allocator Unity.Collections.Allocator
---@return Unity.Collections.NativeArray_1_System_Int32_
function m:GetReflectionProbeIndexMap(allocator) end

---@param lightIndexMap Unity.Collections.NativeArray_1_System_Int32_
function m:SetReflectionProbeIndexMap(lightIndexMap) end

---@param lightIndex number
---@return boolean, UnityEngine.Bounds
function m:GetShadowCasterBounds(lightIndex) end

---@param activeLightIndex number
---@return boolean, UnityEngine.Matrix4x4, UnityEngine.Matrix4x4, UnityEngine.Rendering.ShadowSplitData
function m:ComputeSpotShadowMatricesAndCullingPrimitives(activeLightIndex) end

---@param activeLightIndex number
---@param cubemapFace UnityEngine.CubemapFace
---@param fovBias number
---@return boolean, UnityEngine.Matrix4x4, UnityEngine.Matrix4x4, UnityEngine.Rendering.ShadowSplitData
function m:ComputePointShadowMatricesAndCullingPrimitives(activeLightIndex, cubemapFace, fovBias) end

---@param activeLightIndex number
---@param splitIndex number
---@param splitCount number
---@param splitRatio UnityEngine.Vector3
---@param shadowResolution number
---@param shadowNearPlaneOffset number
---@return boolean, UnityEngine.Matrix4x4, UnityEngine.Matrix4x4, UnityEngine.Rendering.ShadowSplitData
function m:ComputeDirectionalShadowMatricesAndCullingPrimitives(activeLightIndex, splitIndex, splitCount, splitRatio, shadowResolution, shadowNearPlaneOffset) end

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.CullingResults
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.CullingResults
---@param right UnityEngine.Rendering.CullingResults
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.CullingResults
---@param right UnityEngine.Rendering.CullingResults
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.CullingResults = m
return m
