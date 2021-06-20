---@class UnityEngine.Rendering.BatchCullingContext : System.ValueType
---@field public cullingPlanes Unity.Collections.NativeArray_1_UnityEngine_Plane_
---@field public batchVisibility Unity.Collections.NativeArray_1_UnityEngine_Rendering_BatchVisibility_
---@field public visibleIndices Unity.Collections.NativeArray_1_System_Int32_
---@field public visibleIndicesY Unity.Collections.NativeArray_1_System_Int32_
---@field public lodParameters UnityEngine.Rendering.LODParameters
---@field public cullingMatrix UnityEngine.Matrix4x4
---@field public nearPlane number
local m = {}

UnityEngine.Rendering.BatchCullingContext = m
return m
