---@class UnityEngine.Rendering.BatchRendererGroup : System.Object
local m = {}

---@virtual
function m:Dispose() end

---@overload fun(mesh:UnityEngine.Mesh, subMeshIndex:number, material:UnityEngine.Material, layer:number, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, invertCulling:boolean, bounds:UnityEngine.Bounds, instanceCount:number, customProps:UnityEngine.MaterialPropertyBlock, associatedSceneObject:UnityEngine.GameObject, sceneCullingMask:number):
---@overload fun(mesh:UnityEngine.Mesh, subMeshIndex:number, material:UnityEngine.Material, layer:number, castShadows:UnityEngine.Rendering.ShadowCastingMode, receiveShadows:boolean, invertCulling:boolean, bounds:UnityEngine.Bounds, instanceCount:number, customProps:UnityEngine.MaterialPropertyBlock, associatedSceneObject:UnityEngine.GameObject, sceneCullingMask:number, renderingLayerMask:number):
---@param mesh UnityEngine.Mesh
---@param subMeshIndex number
---@param material UnityEngine.Material
---@param layer number
---@param castShadows UnityEngine.Rendering.ShadowCastingMode
---@param receiveShadows boolean
---@param invertCulling boolean
---@param bounds UnityEngine.Bounds
---@param instanceCount number
---@param customProps UnityEngine.MaterialPropertyBlock
---@param associatedSceneObject UnityEngine.GameObject
---@return number
function m:AddBatch(mesh, subMeshIndex, material, layer, castShadows, receiveShadows, invertCulling, bounds, instanceCount, customProps, associatedSceneObject) end

---@param batchIndex number
---@param flags number
function m:SetBatchFlags(batchIndex, flags) end

---@param batchIndex number
---@param cbufferLengths Unity.Collections.NativeArray_1_System_Int32_
---@param cbufferMetadata Unity.Collections.NativeArray_1_System_Int32_
function m:SetBatchPropertyMetadata(batchIndex, cbufferLengths, cbufferMetadata) end

---@param batchIndex number
---@param instanceCount number
---@param customProps UnityEngine.MaterialPropertyBlock
function m:SetInstancingData(batchIndex, instanceCount, customProps) end

---@param batchIndex number
---@return Unity.Collections.NativeArray_1_UnityEngine_Matrix4x4_
function m:GetBatchMatrices(batchIndex) end

---@overload fun(batchIndex:number, propertyName:number):
---@param batchIndex number
---@param propertyName string
---@return Unity.Collections.NativeArray_1_System_Int32_
function m:GetBatchScalarArrayInt(batchIndex, propertyName) end

---@overload fun(batchIndex:number, propertyName:number):
---@param batchIndex number
---@param propertyName string
---@return Unity.Collections.NativeArray_1_System_Single_
function m:GetBatchScalarArray(batchIndex, propertyName) end

---@overload fun(batchIndex:number, propertyName:number):
---@param batchIndex number
---@param propertyName string
---@return Unity.Collections.NativeArray_1_System_Int32_
function m:GetBatchVectorArrayInt(batchIndex, propertyName) end

---@overload fun(batchIndex:number, propertyName:number):
---@param batchIndex number
---@param propertyName string
---@return Unity.Collections.NativeArray_1_UnityEngine_Vector4_
function m:GetBatchVectorArray(batchIndex, propertyName) end

---@overload fun(batchIndex:number, propertyName:number):
---@param batchIndex number
---@param propertyName string
---@return Unity.Collections.NativeArray_1_UnityEngine_Matrix4x4_
function m:GetBatchMatrixArray(batchIndex, propertyName) end

---@param batchIndex number
---@param bounds UnityEngine.Bounds
function m:SetBatchBounds(batchIndex, bounds) end

---@return number
function m:GetNumBatches() end

---@param index number
function m:RemoveBatch(index) end

---@param enabled boolean
function m:EnableVisibleIndicesYArray(enabled) end

UnityEngine.Rendering.BatchRendererGroup = m
return m
