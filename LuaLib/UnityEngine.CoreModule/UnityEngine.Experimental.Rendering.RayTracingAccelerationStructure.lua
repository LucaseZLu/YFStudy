---@class UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure : System.Object
local m = {}

---@virtual
function m:Dispose() end

function m:Release() end

---@overload fun(relativeOrigin:UnityEngine.Vector3)
function m:Build() end

---@overload fun(relativeOrigin:UnityEngine.Vector3)
function m:Update() end

---@overload fun(targetRenderer:UnityEngine.Renderer, subMeshMask:boolean[], subMeshTransparencyFlags:boolean[], enableTriangleCulling:boolean, frontTriangleCounterClockwise:boolean)
---@overload fun(targetRenderer:UnityEngine.Renderer, subMeshMask:boolean[], subMeshTransparencyFlags:boolean[], enableTriangleCulling:boolean)
---@overload fun(targetRenderer:UnityEngine.Renderer, subMeshMask:boolean[], subMeshTransparencyFlags:boolean[])
---@overload fun(targetRenderer:UnityEngine.Renderer, subMeshMask:boolean[])
---@overload fun(targetRenderer:UnityEngine.Renderer)
---@overload fun(aabbBuffer:UnityEngine.GraphicsBuffer, numElements:number, material:UnityEngine.Material, isCutOff:boolean, enableTriangleCulling:boolean, frontTriangleCounterClockwise:boolean, mask:number, reuseBounds:boolean)
---@overload fun(aabbBuffer:UnityEngine.GraphicsBuffer, numElements:number, material:UnityEngine.Material, isCutOff:boolean, enableTriangleCulling:boolean, frontTriangleCounterClockwise:boolean, mask:number)
---@overload fun(aabbBuffer:UnityEngine.GraphicsBuffer, numElements:number, material:UnityEngine.Material, isCutOff:boolean, enableTriangleCulling:boolean, frontTriangleCounterClockwise:boolean)
---@overload fun(aabbBuffer:UnityEngine.GraphicsBuffer, numElements:number, material:UnityEngine.Material, isCutOff:boolean, enableTriangleCulling:boolean)
---@overload fun(aabbBuffer:UnityEngine.GraphicsBuffer, numElements:number, material:UnityEngine.Material, isCutOff:boolean)
---@overload fun(aabbBuffer:UnityEngine.GraphicsBuffer, numElements:number, material:UnityEngine.Material, instanceTransform:UnityEngine.Matrix4x4, isCutOff:boolean, enableTriangleCulling:boolean, frontTriangleCounterClockwise:boolean, mask:number, reuseBounds:boolean)
---@overload fun(aabbBuffer:UnityEngine.GraphicsBuffer, numElements:number, material:UnityEngine.Material, instanceTransform:UnityEngine.Matrix4x4, isCutOff:boolean, enableTriangleCulling:boolean, frontTriangleCounterClockwise:boolean, mask:number)
---@overload fun(aabbBuffer:UnityEngine.GraphicsBuffer, numElements:number, material:UnityEngine.Material, instanceTransform:UnityEngine.Matrix4x4, isCutOff:boolean, enableTriangleCulling:boolean, frontTriangleCounterClockwise:boolean)
---@overload fun(aabbBuffer:UnityEngine.GraphicsBuffer, numElements:number, material:UnityEngine.Material, instanceTransform:UnityEngine.Matrix4x4, isCutOff:boolean, enableTriangleCulling:boolean)
---@overload fun(aabbBuffer:UnityEngine.GraphicsBuffer, numElements:number, material:UnityEngine.Material, instanceTransform:UnityEngine.Matrix4x4, isCutOff:boolean)
---@param targetRenderer UnityEngine.Renderer
---@param subMeshMask boolean[]
---@param subMeshTransparencyFlags boolean[]
---@param enableTriangleCulling boolean
---@param frontTriangleCounterClockwise boolean
---@param mask number
function m:AddInstance(targetRenderer, subMeshMask, subMeshTransparencyFlags, enableTriangleCulling, frontTriangleCounterClockwise, mask) end

---@param renderer UnityEngine.Renderer
function m:UpdateInstanceTransform(renderer) end

---@return number
function m:GetSize() end

UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure = m
return m
