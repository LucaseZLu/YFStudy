---@class UnityEngine.Rendering.BatchRendererCullingOutput : System.ValueType
---@field public cullingJobsFence Unity.Jobs.JobHandle
---@field public cullingMatrix UnityEngine.Matrix4x4
---@field public cullingPlanes UnityEngine.Plane*
---@field public batchVisibility UnityEngine.Rendering.BatchVisibility*
---@field public visibleIndices System.Int32*
---@field public visibleIndicesY System.Int32*
---@field public cullingPlanesCount number
---@field public batchVisibilityCount number
---@field public visibleIndicesCount number
---@field public nearPlane number
local m = {}

UnityEngine.Rendering.BatchRendererCullingOutput = m
return m
