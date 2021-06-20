---@class UnityEngine.Rendering.ShaderKeyword : System.ValueType
---@field public index number
local m = {}

---@static
---@param index UnityEngine.Rendering.ShaderKeyword
---@return string
function m.GetGlobalKeywordName(index) end

---@static
---@param index UnityEngine.Rendering.ShaderKeyword
---@return UnityEngine.Rendering.ShaderKeywordType
function m.GetGlobalKeywordType(index) end

---@static
---@param index UnityEngine.Rendering.ShaderKeyword
---@return boolean
function m.IsKeywordLocal(index) end

---@overload fun(shader:UnityEngine.ComputeShader, index:UnityEngine.Rendering.ShaderKeyword): @static
---@overload fun():
---@static
---@param shader UnityEngine.Shader
---@param index UnityEngine.Rendering.ShaderKeyword
---@return string
function m.GetKeywordName(shader, index) end

---@overload fun(shader:UnityEngine.ComputeShader, index:UnityEngine.Rendering.ShaderKeyword): @static
---@overload fun():
---@static
---@param shader UnityEngine.Shader
---@param index UnityEngine.Rendering.ShaderKeyword
---@return UnityEngine.Rendering.ShaderKeywordType
function m.GetKeywordType(shader, index) end

---@return boolean
function m:IsValid() end

---@return string
function m:GetName() end

UnityEngine.Rendering.ShaderKeyword = m
return m
