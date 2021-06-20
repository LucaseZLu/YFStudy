---@class UnityEngine.Rendering.SubMeshDescriptor : System.ValueType
---@field public bounds UnityEngine.Bounds
---@field public topology UnityEngine.MeshTopology
---@field public indexStart number
---@field public indexCount number
---@field public baseVertex number
---@field public firstVertex number
---@field public vertexCount number
local m = {}

---@virtual
---@return string
function m:ToString() end

UnityEngine.Rendering.SubMeshDescriptor = m
return m
