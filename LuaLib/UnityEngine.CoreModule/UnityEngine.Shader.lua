---@class UnityEngine.Shader : UnityEngine.Object
---@field public globalShaderHardwareTier UnityEngine.Rendering.ShaderHardwareTier @static
---@field public globalMaximumLOD number @static
---@field public globalRenderPipeline string @static
---@field public maximumLOD number
---@field public isSupported boolean
---@field public renderQueue number
---@field public passCount number
local m = {}

---@static
---@param propertyName string
---@param mode UnityEngine.TexGenMode
function m.SetGlobalTexGenMode(propertyName, mode) end

---@static
---@param propertyName string
---@param matrixName string
function m.SetGlobalTextureMatrixName(propertyName, matrixName) end

---@static
---@param name string
---@return UnityEngine.Shader
function m.Find(name) end

---@static
---@param keyword string
function m.EnableKeyword(keyword) end

---@static
---@param keyword string
function m.DisableKeyword(keyword) end

---@static
---@param keyword string
---@return boolean
function m.IsKeywordEnabled(keyword) end

---@static
function m.WarmupAllShaders() end

---@static
---@param name string
---@return number
function m.PropertyToID(name) end

---@param name string
---@return UnityEngine.Shader
function m:GetDependency(name) end

---@param passIndex number
---@param tagName UnityEngine.Rendering.ShaderTagId
---@return UnityEngine.Rendering.ShaderTagId
function m:FindPassTagValue(passIndex, tagName) end

---@overload fun(nameID:number, value:number) @static
---@static
---@param name string
---@param value number
function m.SetGlobalFloat(name, value) end

---@overload fun(nameID:number, value:number) @static
---@static
---@param name string
---@param value number
function m.SetGlobalInt(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Vector4) @static
---@static
---@param name string
---@param value UnityEngine.Vector4
function m.SetGlobalVector(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Color) @static
---@static
---@param name string
---@param value UnityEngine.Color
function m.SetGlobalColor(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Matrix4x4) @static
---@static
---@param name string
---@param value UnityEngine.Matrix4x4
function m.SetGlobalMatrix(name, value) end

---@overload fun(nameID:number, value:UnityEngine.Texture) @static
---@overload fun(name:string, value:UnityEngine.RenderTexture, element:UnityEngine.Rendering.RenderTextureSubElement) @static
---@overload fun(nameID:number, value:UnityEngine.RenderTexture, element:UnityEngine.Rendering.RenderTextureSubElement) @static
---@static
---@param name string
---@param value UnityEngine.Texture
function m.SetGlobalTexture(name, value) end

---@overload fun(nameID:number, value:UnityEngine.ComputeBuffer) @static
---@overload fun(name:string, value:UnityEngine.GraphicsBuffer) @static
---@overload fun(nameID:number, value:UnityEngine.GraphicsBuffer) @static
---@static
---@param name string
---@param value UnityEngine.ComputeBuffer
function m.SetGlobalBuffer(name, value) end

---@overload fun(nameID:number, value:UnityEngine.ComputeBuffer, offset:number, size:number) @static
---@overload fun(name:string, value:UnityEngine.GraphicsBuffer, offset:number, size:number) @static
---@overload fun(nameID:number, value:UnityEngine.GraphicsBuffer, offset:number, size:number) @static
---@static
---@param name string
---@param value UnityEngine.ComputeBuffer
---@param offset number
---@param size number
function m.SetGlobalConstantBuffer(name, value, offset, size) end

---@overload fun(nameID:number, values:number[]) @static
---@overload fun(name:string, values:number[]) @static
---@overload fun(nameID:number, values:number[]) @static
---@static
---@param name string
---@param values number[]
function m.SetGlobalFloatArray(name, values) end

---@overload fun(nameID:number, values:UnityEngine.Vector4[]) @static
---@overload fun(name:string, values:UnityEngine.Vector4[]) @static
---@overload fun(nameID:number, values:UnityEngine.Vector4[]) @static
---@static
---@param name string
---@param values UnityEngine.Vector4[]
function m.SetGlobalVectorArray(name, values) end

---@overload fun(nameID:number, values:UnityEngine.Matrix4x4[]) @static
---@overload fun(name:string, values:UnityEngine.Matrix4x4[]) @static
---@overload fun(nameID:number, values:UnityEngine.Matrix4x4[]) @static
---@static
---@param name string
---@param values UnityEngine.Matrix4x4[]
function m.SetGlobalMatrixArray(name, values) end

---@overload fun(nameID:number): @static
---@static
---@param name string
---@return number
function m.GetGlobalFloat(name) end

---@overload fun(nameID:number): @static
---@static
---@param name string
---@return number
function m.GetGlobalInt(name) end

---@overload fun(nameID:number): @static
---@static
---@param name string
---@return UnityEngine.Vector4
function m.GetGlobalVector(name) end

---@overload fun(nameID:number): @static
---@static
---@param name string
---@return UnityEngine.Color
function m.GetGlobalColor(name) end

---@overload fun(nameID:number): @static
---@static
---@param name string
---@return UnityEngine.Matrix4x4
function m.GetGlobalMatrix(name) end

---@overload fun(nameID:number): @static
---@static
---@param name string
---@return UnityEngine.Texture
function m.GetGlobalTexture(name) end

---@overload fun(nameID:number): @static
---@overload fun(name:string, values:number[]) @static
---@overload fun(nameID:number, values:number[]) @static
---@static
---@param name string
---@return number[]
function m.GetGlobalFloatArray(name) end

---@overload fun(nameID:number): @static
---@overload fun(name:string, values:UnityEngine.Vector4[]) @static
---@overload fun(nameID:number, values:UnityEngine.Vector4[]) @static
---@static
---@param name string
---@return UnityEngine.Vector4[]
function m.GetGlobalVectorArray(name) end

---@overload fun(nameID:number): @static
---@overload fun(name:string, values:UnityEngine.Matrix4x4[]) @static
---@overload fun(nameID:number, values:UnityEngine.Matrix4x4[]) @static
---@static
---@param name string
---@return UnityEngine.Matrix4x4[]
function m.GetGlobalMatrixArray(name) end

---@return number
function m:GetPropertyCount() end

---@param propertyName string
---@return number
function m:FindPropertyIndex(propertyName) end

---@param propertyIndex number
---@return string
function m:GetPropertyName(propertyIndex) end

---@param propertyIndex number
---@return number
function m:GetPropertyNameId(propertyIndex) end

---@param propertyIndex number
---@return UnityEngine.Rendering.ShaderPropertyType
function m:GetPropertyType(propertyIndex) end

---@param propertyIndex number
---@return string
function m:GetPropertyDescription(propertyIndex) end

---@param propertyIndex number
---@return UnityEngine.Rendering.ShaderPropertyFlags
function m:GetPropertyFlags(propertyIndex) end

---@param propertyIndex number
---@return string[]
function m:GetPropertyAttributes(propertyIndex) end

---@param propertyIndex number
---@return number
function m:GetPropertyDefaultFloatValue(propertyIndex) end

---@param propertyIndex number
---@return UnityEngine.Vector4
function m:GetPropertyDefaultVectorValue(propertyIndex) end

---@param propertyIndex number
---@return UnityEngine.Vector2
function m:GetPropertyRangeLimits(propertyIndex) end

---@param propertyIndex number
---@return UnityEngine.Rendering.TextureDimension
function m:GetPropertyTextureDimension(propertyIndex) end

---@param propertyIndex number
---@return string
function m:GetPropertyTextureDefaultName(propertyIndex) end

---@param propertyIndex number
---@return boolean, System.String, System.Int32
function m:FindTextureStack(propertyIndex) end

UnityEngine.Shader = m
return m
