---@class UnityEngine.Mesh.MeshData : System.ValueType
---@field public vertexCount number
---@field public vertexBufferCount number
---@field public indexFormat UnityEngine.Rendering.IndexFormat
---@field public subMeshCount number
local m = {}

---@param attr UnityEngine.Rendering.VertexAttribute
---@return boolean
function m:HasVertexAttribute(attr) end

---@param attr UnityEngine.Rendering.VertexAttribute
---@return number
function m:GetVertexAttributeDimension(attr) end

---@param attr UnityEngine.Rendering.VertexAttribute
---@return UnityEngine.Rendering.VertexAttributeFormat
function m:GetVertexAttributeFormat(attr) end

---@param outVertices Unity.Collections.NativeArray_1_UnityEngine_Vector3_
function m:GetVertices(outVertices) end

---@param outNormals Unity.Collections.NativeArray_1_UnityEngine_Vector3_
function m:GetNormals(outNormals) end

---@param outTangents Unity.Collections.NativeArray_1_UnityEngine_Vector4_
function m:GetTangents(outTangents) end

---@overload fun(outColors:Unity.Collections.NativeArray_1_UnityEngine_Color32_)
---@param outColors Unity.Collections.NativeArray_1_UnityEngine_Color_
function m:GetColors(outColors) end

---@overload fun(channel:number, outUVs:Unity.Collections.NativeArray_1_UnityEngine_Vector3_)
---@overload fun(channel:number, outUVs:Unity.Collections.NativeArray_1_UnityEngine_Vector4_)
---@param channel number
---@param outUVs Unity.Collections.NativeArray_1_UnityEngine_Vector2_
function m:GetUVs(channel, outUVs) end

---@overload fun():
---@param stream number
---@return System.ValueType
function m:GetVertexData(stream) end

---@overload fun(vertexCount:number)
---@overload fun(vertexCount:number, attributes:Unity.Collections.NativeArray_1_UnityEngine_Rendering_VertexAttributeDescriptor_)
---@param vertexCount number
---@param ... UnityEngine.Rendering.VertexAttributeDescriptor|UnityEngine.Rendering.VertexAttributeDescriptor[]
function m:SetVertexBufferParams(vertexCount, ...) end

---@param indexCount number
---@param format UnityEngine.Rendering.IndexFormat
function m:SetIndexBufferParams(indexCount, format) end

---@overload fun(outIndices:Unity.Collections.NativeArray_1_System_UInt16_, submesh:number)
---@overload fun(outIndices:Unity.Collections.NativeArray_1_System_Int32_, submesh:number, applyBaseVertex:boolean)
---@overload fun(outIndices:Unity.Collections.NativeArray_1_System_Int32_, submesh:number)
---@param outIndices Unity.Collections.NativeArray_1_System_UInt16_
---@param submesh number
---@param applyBaseVertex boolean
function m:GetIndices(outIndices, submesh, applyBaseVertex) end

---@return System.ValueType
function m:GetIndexData() end

---@param index number
---@return UnityEngine.Rendering.SubMeshDescriptor
function m:GetSubMesh(index) end

---@overload fun(index:number, desc:UnityEngine.Rendering.SubMeshDescriptor)
---@param index number
---@param desc UnityEngine.Rendering.SubMeshDescriptor
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function m:SetSubMesh(index, desc, flags) end

UnityEngine.Mesh.MeshData = m
return m
