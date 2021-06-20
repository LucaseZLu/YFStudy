---@class Unity.Rendering.HybridV2.HybridV2ShaderReflection : System.Object
local m = {}

---@static
---@return number
function m.GetDOTSReflectionVersionNumber() end

---@static
---@param shader UnityEngine.Shader
---@return Unity.Collections.NativeArray_1_Unity_Rendering_HybridV2_DOTSInstancingCbuffer_
function m.GetDOTSInstancingCbuffers(shader) end

---@static
---@param shader UnityEngine.Shader
---@return Unity.Collections.NativeArray_1_Unity_Rendering_HybridV2_DOTSInstancingProperty_
function m.GetDOTSInstancingProperties(shader) end

Unity.Rendering.HybridV2.HybridV2ShaderReflection = m
return m
