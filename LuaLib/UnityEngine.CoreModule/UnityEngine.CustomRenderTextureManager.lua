---@class UnityEngine.CustomRenderTextureManager : System.Object
local m = {}

---@static
---@param value fun(obj:UnityEngine.CustomRenderTexture)
function m.add_textureLoaded(value) end

---@static
---@param value fun(obj:UnityEngine.CustomRenderTexture)
function m.remove_textureLoaded(value) end

---@static
---@param value fun(obj:UnityEngine.CustomRenderTexture)
function m.add_textureUnloaded(value) end

---@static
---@param value fun(obj:UnityEngine.CustomRenderTexture)
function m.remove_textureUnloaded(value) end

---@static
---@param currentCustomRenderTextures UnityEngine.CustomRenderTexture[]
function m.GetAllCustomRenderTextures(currentCustomRenderTextures) end

---@static
---@param value fun(arg1:UnityEngine.CustomRenderTexture, arg2:number)
function m.add_updateTriggered(value) end

---@static
---@param value fun(arg1:UnityEngine.CustomRenderTexture, arg2:number)
function m.remove_updateTriggered(value) end

---@static
---@param value fun(obj:UnityEngine.CustomRenderTexture)
function m.add_initializeTriggered(value) end

---@static
---@param value fun(obj:UnityEngine.CustomRenderTexture)
function m.remove_initializeTriggered(value) end

UnityEngine.CustomRenderTextureManager = m
return m
