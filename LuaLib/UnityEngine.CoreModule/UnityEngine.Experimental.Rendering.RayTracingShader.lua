---@class UnityEngine.Experimental.Rendering.RayTracingShader : UnityEngine.Object
---@field public maxRecursionDepth number
local m = {}

---@overload fun(name:string, val:number)
---@param nameID number
---@param val number
function m:SetFloat(nameID, val) end

---@overload fun(name:string, val:number)
---@param nameID number
---@param val number
function m:SetInt(nameID, val) end

---@overload fun(name:string, val:UnityEngine.Vector4)
---@param nameID number
---@param val UnityEngine.Vector4
function m:SetVector(nameID, val) end

---@overload fun(name:string, val:UnityEngine.Matrix4x4)
---@param nameID number
---@param val UnityEngine.Matrix4x4
function m:SetMatrix(nameID, val) end

---@overload fun(name:string, values:UnityEngine.Vector4[])
---@param nameID number
---@param values UnityEngine.Vector4[]
function m:SetVectorArray(nameID, values) end

---@overload fun(name:string, values:UnityEngine.Matrix4x4[])
---@param nameID number
---@param values UnityEngine.Matrix4x4[]
function m:SetMatrixArray(nameID, values) end

---@overload fun(name:string, texture:UnityEngine.Texture)
---@param nameID number
---@param texture UnityEngine.Texture
function m:SetTexture(nameID, texture) end

---@overload fun(nameID:number, buffer:UnityEngine.GraphicsBuffer)
---@overload fun(name:string, buffer:UnityEngine.ComputeBuffer)
---@overload fun(name:string, buffer:UnityEngine.GraphicsBuffer)
---@param nameID number
---@param buffer UnityEngine.ComputeBuffer
function m:SetBuffer(nameID, buffer) end

---@overload fun(name:string, accelerationStructure:UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure)
---@param nameID number
---@param accelerationStructure UnityEngine.Experimental.Rendering.RayTracingAccelerationStructure
function m:SetAccelerationStructure(nameID, accelerationStructure) end

---@param passName string
function m:SetShaderPass(passName) end

---@overload fun(name:string, globalTextureName:string)
---@param nameID number
---@param globalTextureNameID number
function m:SetTextureFromGlobal(nameID, globalTextureNameID) end

---@overload fun(rayGenFunctionName:string, width:number, height:number, depth:number)
---@param rayGenFunctionName string
---@param width number
---@param height number
---@param depth number
---@param camera UnityEngine.Camera
function m:Dispatch(rayGenFunctionName, width, height, depth, camera) end

---@overload fun(name:string)
---@overload fun(nameID:number, ...:number|number[])
---@overload fun(nameID:number)
---@param name string
---@param ... number|number[]
function m:SetFloats(name, ...) end

---@overload fun(name:string)
---@overload fun(nameID:number, ...:number|number[])
---@overload fun(nameID:number)
---@param name string
---@param ... number|number[]
function m:SetInts(name, ...) end

---@overload fun(nameID:number, val:boolean)
---@param name string
---@param val boolean
function m:SetBool(name, val) end

---@overload fun(name:string, buffer:UnityEngine.ComputeBuffer, offset:number, size:number)
---@overload fun(nameID:number, buffer:UnityEngine.GraphicsBuffer, offset:number, size:number)
---@overload fun(name:string, buffer:UnityEngine.GraphicsBuffer, offset:number, size:number)
---@param nameID number
---@param buffer UnityEngine.ComputeBuffer
---@param offset number
---@param size number
function m:SetConstantBuffer(nameID, buffer, offset, size) end

UnityEngine.Experimental.Rendering.RayTracingShader = m
return m
