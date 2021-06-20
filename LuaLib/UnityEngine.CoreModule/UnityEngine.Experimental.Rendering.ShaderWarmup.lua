---@class UnityEngine.Experimental.Rendering.ShaderWarmup : System.Object
local m = {}

---@static
---@param shader UnityEngine.Shader
---@param setup UnityEngine.Experimental.Rendering.ShaderWarmupSetup
function m.WarmupShader(shader, setup) end

---@static
---@param collection UnityEngine.ShaderVariantCollection
---@param shader UnityEngine.Shader
---@param setup UnityEngine.Experimental.Rendering.ShaderWarmupSetup
function m.WarmupShaderFromCollection(collection, shader, setup) end

UnityEngine.Experimental.Rendering.ShaderWarmup = m
return m
