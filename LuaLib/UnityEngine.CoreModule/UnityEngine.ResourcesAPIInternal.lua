---@class UnityEngine.ResourcesAPIInternal : System.Object
local m = {}

---@static
---@param type System.Type
---@return UnityEngine.Object[]
function m.FindObjectsOfTypeAll(type) end

---@static
---@param name string
---@return UnityEngine.Shader
function m.FindShaderByName(name) end

---@static
---@param path string
---@param systemTypeInstance System.Type
---@return UnityEngine.Object
function m.Load(path, systemTypeInstance) end

---@static
---@param path string
---@param systemTypeInstance System.Type
---@return UnityEngine.Object[]
function m.LoadAll(path, systemTypeInstance) end

---@static
---@param assetToUnload UnityEngine.Object
function m.UnloadAsset(assetToUnload) end

UnityEngine.ResourcesAPIInternal = m
return m
