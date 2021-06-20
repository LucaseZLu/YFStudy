---@class UnityEngine.Mesh : UnityEngine.Object
---@field public uv1 UnityEngine.Vector2[]
---@field public indexFormat UnityEngine.Rendering.IndexFormat
---@field public vertexBufferCount number
---@field public blendShapeCount number
---@field public bindposes UnityEngine.Matrix4x4[]
---@field public isReadable boolean
---@field public vertexCount number
---@field public subMeshCount number
---@field public bounds UnityEngine.Bounds
---@field public vertices UnityEngine.Vector3[]
---@field public normals UnityEngine.Vector3[]
---@field public tangents UnityEngine.Vector4[]
---@field public uv UnityEngine.Vector2[]
---@field public uv2 UnityEngine.Vector2[]
---@field public uv3 UnityEngine.Vector2[]
---@field public uv4 UnityEngine.Vector2[]
---@field public uv5 UnityEngine.Vector2[]
---@field public uv6 UnityEngine.Vector2[]
---@field public uv7 UnityEngine.Vector2[]
---@field public uv8 UnityEngine.Vector2[]
---@field public colors UnityEngine.Color[]
---@field public colors32 UnityEngine.Color32[]
---@field public vertexAttributeCount number
---@field public triangles number[]
---@field public boneWeights UnityEngine.BoneWeight[]
local m = {}

---@param indexCount number
---@param format UnityEngine.Rendering.IndexFormat
function m:SetIndexBufferParams(indexCount, format) end

---@param index number
---@return UnityEngine.Rendering.VertexAttributeDescriptor
function m:GetVertexAttribute(index) end

---@param attr UnityEngine.Rendering.VertexAttribute
---@return boolean
function m:HasVertexAttribute(attr) end

---@param attr UnityEngine.Rendering.VertexAttribute
---@return number
function m:GetVertexAttributeDimension(attr) end

---@param attr UnityEngine.Rendering.VertexAttribute
---@return UnityEngine.Rendering.VertexAttributeFormat
function m:GetVertexAttributeFormat(attr) end

---@param index number
---@return System.IntPtr
function m:GetNativeVertexBufferPtr(index) end

---@return System.IntPtr
function m:GetNativeIndexBufferPtr() end

function m:ClearBlendShapes() end

---@param shapeIndex number
---@return string
function m:GetBlendShapeName(shapeIndex) end

---@param blendShapeName string
---@return number
function m:GetBlendShapeIndex(blendShapeName) end

---@param shapeIndex number
---@return number
function m:GetBlendShapeFrameCount(shapeIndex) end

---@param shapeIndex number
---@param frameIndex number
---@return number
function m:GetBlendShapeFrameWeight(shapeIndex, frameIndex) end

---@param shapeIndex number
---@param frameIndex number
---@param deltaVertices UnityEngine.Vector3[]
---@param deltaNormals UnityEngine.Vector3[]
---@param deltaTangents UnityEngine.Vector3[]
function m:GetBlendShapeFrameVertices(shapeIndex, frameIndex, deltaVertices, deltaNormals, deltaTangents) end

---@param shapeName string
---@param frameWeight number
---@param deltaVertices UnityEngine.Vector3[]
---@param deltaNormals UnityEngine.Vector3[]
---@param deltaTangents UnityEngine.Vector3[]
function m:AddBlendShapeFrame(shapeName, frameWeight, deltaVertices, deltaNormals, deltaTangents) end

---@param bonesPerVertex Unity.Collections.NativeArray_1_System_Byte_
---@param weights Unity.Collections.NativeArray_1_UnityEngine_BoneWeight1_
function m:SetBoneWeights(bonesPerVertex, weights) end

---@return Unity.Collections.NativeArray_1_UnityEngine_BoneWeight1_
function m:GetAllBoneWeights() end

---@return Unity.Collections.NativeArray_1_System_Byte_
function m:GetBonesPerVertex() end

---@overload fun(index:number, desc:UnityEngine.Rendering.SubMeshDescriptor)
---@param index number
---@param desc UnityEngine.Rendering.SubMeshDescriptor
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function m:SetSubMesh(index, desc, flags) end

---@param index number
---@return UnityEngine.Rendering.SubMeshDescriptor
function m:GetSubMesh(index) end

function m:MarkModified() end

---@param uvSetIndex number
---@return number
function m:GetUVDistributionMetric(uvSetIndex) end

---@param vertices UnityEngine.Vector3[]
function m:GetVertices(vertices) end

---@overload fun(inVertices:UnityEngine.Vector3[], start:number, length:number)
---@overload fun(inVertices:UnityEngine.Vector3[], start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(inVertices:UnityEngine.Vector3[])
---@overload fun(inVertices:UnityEngine.Vector3[], start:number, length:number)
---@overload fun(inVertices:UnityEngine.Vector3[], start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(inVertices:System.ValueType)
---@overload fun(inVertices:System.ValueType, start:number, length:number)
---@overload fun(inVertices:System.ValueType, start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@param inVertices UnityEngine.Vector3[]
function m:SetVertices(inVertices) end

---@param normals UnityEngine.Vector3[]
function m:GetNormals(normals) end

---@overload fun(inNormals:UnityEngine.Vector3[], start:number, length:number)
---@overload fun(inNormals:UnityEngine.Vector3[], start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(inNormals:UnityEngine.Vector3[])
---@overload fun(inNormals:UnityEngine.Vector3[], start:number, length:number)
---@overload fun(inNormals:UnityEngine.Vector3[], start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(inNormals:System.ValueType)
---@overload fun(inNormals:System.ValueType, start:number, length:number)
---@overload fun(inNormals:System.ValueType, start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@param inNormals UnityEngine.Vector3[]
function m:SetNormals(inNormals) end

---@param tangents UnityEngine.Vector4[]
function m:GetTangents(tangents) end

---@overload fun(inTangents:UnityEngine.Vector4[], start:number, length:number)
---@overload fun(inTangents:UnityEngine.Vector4[], start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(inTangents:UnityEngine.Vector4[])
---@overload fun(inTangents:UnityEngine.Vector4[], start:number, length:number)
---@overload fun(inTangents:UnityEngine.Vector4[], start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(inTangents:System.ValueType)
---@overload fun(inTangents:System.ValueType, start:number, length:number)
---@overload fun(inTangents:System.ValueType, start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@param inTangents UnityEngine.Vector4[]
function m:SetTangents(inTangents) end

---@overload fun(colors:UnityEngine.Color32[])
---@param colors UnityEngine.Color[]
function m:GetColors(colors) end

---@overload fun(inColors:UnityEngine.Color[], start:number, length:number)
---@overload fun(inColors:UnityEngine.Color[], start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(inColors:UnityEngine.Color[])
---@overload fun(inColors:UnityEngine.Color[], start:number, length:number)
---@overload fun(inColors:UnityEngine.Color[], start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(inColors:UnityEngine.Color32[])
---@overload fun(inColors:UnityEngine.Color32[], start:number, length:number)
---@overload fun(inColors:UnityEngine.Color32[], start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(inColors:UnityEngine.Color32[])
---@overload fun(inColors:UnityEngine.Color32[], start:number, length:number)
---@overload fun(inColors:UnityEngine.Color32[], start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(inColors:System.ValueType)
---@overload fun(inColors:System.ValueType, start:number, length:number)
---@overload fun(inColors:System.ValueType, start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@param inColors UnityEngine.Color[]
function m:SetColors(inColors) end

---@overload fun(channel:number, uvs:UnityEngine.Vector3[])
---@overload fun(channel:number, uvs:UnityEngine.Vector4[])
---@overload fun(channel:number, uvs:UnityEngine.Vector2[], start:number, length:number)
---@overload fun(channel:number, uvs:UnityEngine.Vector2[], start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(channel:number, uvs:UnityEngine.Vector3[], start:number, length:number)
---@overload fun(channel:number, uvs:UnityEngine.Vector3[], start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(channel:number, uvs:UnityEngine.Vector4[], start:number, length:number)
---@overload fun(channel:number, uvs:UnityEngine.Vector4[], start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(channel:number, uvs:UnityEngine.Vector2[])
---@overload fun(channel:number, uvs:UnityEngine.Vector3[])
---@overload fun(channel:number, uvs:UnityEngine.Vector4[])
---@overload fun(channel:number, uvs:UnityEngine.Vector2[], start:number, length:number)
---@overload fun(channel:number, uvs:UnityEngine.Vector2[], start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(channel:number, uvs:UnityEngine.Vector3[], start:number, length:number)
---@overload fun(channel:number, uvs:UnityEngine.Vector3[], start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(channel:number, uvs:UnityEngine.Vector4[], start:number, length:number)
---@overload fun(channel:number, uvs:UnityEngine.Vector4[], start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(channel:number, uvs:System.ValueType)
---@overload fun(channel:number, uvs:System.ValueType, start:number, length:number)
---@overload fun(channel:number, uvs:System.ValueType, start:number, length:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@param channel number
---@param uvs UnityEngine.Vector2[]
function m:SetUVs(channel, uvs) end

---@overload fun(channel:number, uvs:UnityEngine.Vector3[])
---@overload fun(channel:number, uvs:UnityEngine.Vector4[])
---@param channel number
---@param uvs UnityEngine.Vector2[]
function m:GetUVs(channel, uvs) end

---@overload fun(attributes:UnityEngine.Rendering.VertexAttributeDescriptor[]):
---@overload fun(attributes:UnityEngine.Rendering.VertexAttributeDescriptor[]):
---@return UnityEngine.Rendering.VertexAttributeDescriptor[]
function m:GetVertexAttributes() end

---@overload fun(vertexCount:number)
---@overload fun(vertexCount:number, attributes:Unity.Collections.NativeArray_1_UnityEngine_Rendering_VertexAttributeDescriptor_)
---@param vertexCount number
---@param ... UnityEngine.Rendering.VertexAttributeDescriptor|UnityEngine.Rendering.VertexAttributeDescriptor[]
function m:SetVertexBufferParams(vertexCount, ...) end

---@overload fun(data:System.ValueType, dataStart:number, meshBufferStart:number, count:number, stream:number)
---@overload fun(data:System.ValueType, dataStart:number, meshBufferStart:number, count:number)
---@overload fun(data:System.ValueType[], dataStart:number, meshBufferStart:number, count:number, stream:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(data:System.ValueType[], dataStart:number, meshBufferStart:number, count:number, stream:number)
---@overload fun(data:System.ValueType[], dataStart:number, meshBufferStart:number, count:number)
---@overload fun(data:System.ValueType[], dataStart:number, meshBufferStart:number, count:number, stream:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(data:System.ValueType[], dataStart:number, meshBufferStart:number, count:number, stream:number)
---@overload fun(data:System.ValueType[], dataStart:number, meshBufferStart:number, count:number)
---@param data System.ValueType
---@param dataStart number
---@param meshBufferStart number
---@param count number
---@param stream number
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function m:SetVertexBufferData(data, dataStart, meshBufferStart, count, stream, flags) end

---@overload fun(meshes:UnityEngine.Mesh[]): @static
---@overload fun(meshes:UnityEngine.Mesh[]): @static
---@static
---@param mesh UnityEngine.Mesh
---@return UnityEngine.Mesh.MeshDataArray
function m.AcquireReadOnlyMeshData(mesh) end

---@static
---@param meshCount number
---@return UnityEngine.Mesh.MeshDataArray
function m.AllocateWritableMeshData(meshCount) end

---@overload fun(data:UnityEngine.Mesh.MeshDataArray, mesh:UnityEngine.Mesh) @static
---@overload fun(data:UnityEngine.Mesh.MeshDataArray, meshes:UnityEngine.Mesh[], flags:UnityEngine.Rendering.MeshUpdateFlags) @static
---@overload fun(data:UnityEngine.Mesh.MeshDataArray, meshes:UnityEngine.Mesh[]) @static
---@overload fun(data:UnityEngine.Mesh.MeshDataArray, meshes:UnityEngine.Mesh[], flags:UnityEngine.Rendering.MeshUpdateFlags) @static
---@overload fun(data:UnityEngine.Mesh.MeshDataArray, meshes:UnityEngine.Mesh[]) @static
---@static
---@param data UnityEngine.Mesh.MeshDataArray
---@param mesh UnityEngine.Mesh
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function m.ApplyAndDisposeWritableMeshData(data, mesh, flags) end

---@overload fun(submesh:number, applyBaseVertex:boolean):
---@overload fun(triangles:number[], submesh:number)
---@overload fun(triangles:number[], submesh:number, applyBaseVertex:boolean)
---@overload fun(triangles:number[], submesh:number, applyBaseVertex:boolean)
---@overload fun(triangles:number[], submesh:number)
---@param submesh number
---@return number[]
function m:GetTriangles(submesh) end

---@overload fun(submesh:number, applyBaseVertex:boolean):
---@overload fun(indices:number[], submesh:number)
---@overload fun(indices:number[], submesh:number, applyBaseVertex:boolean)
---@overload fun(indices:number[], submesh:number, applyBaseVertex:boolean)
---@overload fun(indices:number[], submesh:number)
---@param submesh number
---@return number[]
function m:GetIndices(submesh) end

---@overload fun(data:System.ValueType, dataStart:number, meshBufferStart:number, count:number)
---@overload fun(data:System.ValueType[], dataStart:number, meshBufferStart:number, count:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(data:System.ValueType[], dataStart:number, meshBufferStart:number, count:number)
---@overload fun(data:System.ValueType[], dataStart:number, meshBufferStart:number, count:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(data:System.ValueType[], dataStart:number, meshBufferStart:number, count:number)
---@param data System.ValueType
---@param dataStart number
---@param meshBufferStart number
---@param count number
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function m:SetIndexBufferData(data, dataStart, meshBufferStart, count, flags) end

---@param submesh number
---@return number
function m:GetIndexStart(submesh) end

---@param submesh number
---@return number
function m:GetIndexCount(submesh) end

---@param submesh number
---@return number
function m:GetBaseVertex(submesh) end

---@overload fun(triangles:number[], submesh:number, calculateBounds:boolean)
---@overload fun(triangles:number[], submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(triangles:number[], trianglesStart:number, trianglesLength:number, submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(triangles:number[], trianglesStart:number, trianglesLength:number, submesh:number, calculateBounds:boolean)
---@overload fun(triangles:number[], trianglesStart:number, trianglesLength:number, submesh:number)
---@overload fun(triangles:number[], submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(triangles:number[], submesh:number, calculateBounds:boolean)
---@overload fun(triangles:number[], submesh:number)
---@overload fun(triangles:number[], trianglesStart:number, trianglesLength:number, submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(triangles:number[], trianglesStart:number, trianglesLength:number, submesh:number, calculateBounds:boolean)
---@overload fun(triangles:number[], trianglesStart:number, trianglesLength:number, submesh:number)
---@overload fun(triangles:number[], submesh:number)
---@overload fun(triangles:number[], submesh:number, calculateBounds:boolean)
---@overload fun(triangles:number[], submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(triangles:number[], trianglesStart:number, trianglesLength:number, submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(triangles:number[], trianglesStart:number, trianglesLength:number, submesh:number, calculateBounds:boolean)
---@overload fun(triangles:number[], trianglesStart:number, trianglesLength:number, submesh:number)
---@overload fun(triangles:number[], submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(triangles:number[], submesh:number, calculateBounds:boolean)
---@overload fun(triangles:number[], submesh:number)
---@overload fun(triangles:number[], trianglesStart:number, trianglesLength:number, submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(triangles:number[], trianglesStart:number, trianglesLength:number, submesh:number, calculateBounds:boolean)
---@overload fun(triangles:number[], trianglesStart:number, trianglesLength:number, submesh:number)
---@param triangles number[]
---@param submesh number
function m:SetTriangles(triangles, submesh) end

---@overload fun(indices:number[], topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean)
---@overload fun(indices:number[], topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(indices:number[], indicesStart:number, indicesLength:number, topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(indices:number[], indicesStart:number, indicesLength:number, topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean)
---@overload fun(indices:number[], indicesStart:number, indicesLength:number, topology:UnityEngine.MeshTopology, submesh:number)
---@overload fun(indices:number[], topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(indices:number[], topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean)
---@overload fun(indices:number[], topology:UnityEngine.MeshTopology, submesh:number)
---@overload fun(indices:number[], indicesStart:number, indicesLength:number, topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(indices:number[], indicesStart:number, indicesLength:number, topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean)
---@overload fun(indices:number[], indicesStart:number, indicesLength:number, topology:UnityEngine.MeshTopology, submesh:number)
---@overload fun(indices:System.ValueType, topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(indices:System.ValueType, topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean)
---@overload fun(indices:System.ValueType, topology:UnityEngine.MeshTopology, submesh:number)
---@overload fun(indices:System.ValueType, indicesStart:number, indicesLength:number, topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(indices:System.ValueType, indicesStart:number, indicesLength:number, topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean)
---@overload fun(indices:System.ValueType, indicesStart:number, indicesLength:number, topology:UnityEngine.MeshTopology, submesh:number)
---@overload fun(indices:number[], topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(indices:number[], topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean)
---@overload fun(indices:number[], topology:UnityEngine.MeshTopology, submesh:number)
---@overload fun(indices:number[], indicesStart:number, indicesLength:number, topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(indices:number[], indicesStart:number, indicesLength:number, topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean)
---@overload fun(indices:number[], indicesStart:number, indicesLength:number, topology:UnityEngine.MeshTopology, submesh:number)
---@overload fun(indices:number[], topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(indices:number[], topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean)
---@overload fun(indices:number[], topology:UnityEngine.MeshTopology, submesh:number)
---@overload fun(indices:number[], indicesStart:number, indicesLength:number, topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean, baseVertex:number)
---@overload fun(indices:number[], indicesStart:number, indicesLength:number, topology:UnityEngine.MeshTopology, submesh:number, calculateBounds:boolean)
---@overload fun(indices:number[], indicesStart:number, indicesLength:number, topology:UnityEngine.MeshTopology, submesh:number)
---@param indices number[]
---@param topology UnityEngine.MeshTopology
---@param submesh number
function m:SetIndices(indices, topology, submesh) end

---@overload fun(desc:UnityEngine.Rendering.SubMeshDescriptor[], start:number, count:number)
---@overload fun(desc:UnityEngine.Rendering.SubMeshDescriptor[], flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(desc:UnityEngine.Rendering.SubMeshDescriptor[])
---@overload fun(desc:UnityEngine.Rendering.SubMeshDescriptor[], start:number, count:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(desc:UnityEngine.Rendering.SubMeshDescriptor[], start:number, count:number)
---@overload fun(desc:UnityEngine.Rendering.SubMeshDescriptor[], flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(desc:UnityEngine.Rendering.SubMeshDescriptor[])
---@overload fun(desc:System.ValueType, start:number, count:number, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(desc:System.ValueType, start:number, count:number)
---@overload fun(desc:System.ValueType, flags:UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(desc:System.ValueType)
---@param desc UnityEngine.Rendering.SubMeshDescriptor[]
---@param start number
---@param count number
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function m:SetSubMeshes(desc, start, count, flags) end

---@param bindposes UnityEngine.Matrix4x4[]
function m:GetBindposes(bindposes) end

---@param boneWeights UnityEngine.BoneWeight[]
function m:GetBoneWeights(boneWeights) end

---@overload fun()
---@param keepVertexLayout boolean
function m:Clear(keepVertexLayout) end

---@overload fun(flags:UnityEngine.Rendering.MeshUpdateFlags)
function m:RecalculateBounds() end

---@overload fun(flags:UnityEngine.Rendering.MeshUpdateFlags)
function m:RecalculateNormals() end

---@overload fun(flags:UnityEngine.Rendering.MeshUpdateFlags)
function m:RecalculateTangents() end

---@overload fun(uvSetIndex:number)
---@param uvSetIndex number
---@param uvAreaThreshold number
function m:RecalculateUVDistributionMetric(uvSetIndex, uvAreaThreshold) end

---@overload fun()
---@param uvAreaThreshold number
function m:RecalculateUVDistributionMetrics(uvAreaThreshold) end

function m:MarkDynamic() end

---@param markNoLongerReadable boolean
function m:UploadMeshData(markNoLongerReadable) end

function m:Optimize() end

function m:OptimizeIndexBuffers() end

function m:OptimizeReorderVertexBuffer() end

---@param submesh number
---@return UnityEngine.MeshTopology
function m:GetTopology(submesh) end

---@overload fun(combine:UnityEngine.CombineInstance[], mergeSubMeshes:boolean, useMatrices:boolean)
---@overload fun(combine:UnityEngine.CombineInstance[], mergeSubMeshes:boolean)
---@overload fun(combine:UnityEngine.CombineInstance[])
---@param combine UnityEngine.CombineInstance[]
---@param mergeSubMeshes boolean
---@param useMatrices boolean
---@param hasLightmapData boolean
function m:CombineMeshes(combine, mergeSubMeshes, useMatrices, hasLightmapData) end

UnityEngine.Mesh = m
return m
