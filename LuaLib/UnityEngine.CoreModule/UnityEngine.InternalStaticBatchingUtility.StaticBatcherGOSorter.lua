---@class UnityEngine.InternalStaticBatchingUtility.StaticBatcherGOSorter : System.Object
local m = {}

---@virtual
---@param renderer UnityEngine.Renderer
---@return number
function m:GetMaterialId(renderer) end

---@param renderer UnityEngine.Renderer
---@return number
function m:GetLightmapIndex(renderer) end

---@static
---@param go UnityEngine.GameObject
---@return UnityEngine.Renderer
function m.GetRenderer(go) end

---@virtual
---@param renderer UnityEngine.Renderer
---@return number
function m:GetRendererId(renderer) end

UnityEngine.InternalStaticBatchingUtility.StaticBatcherGOSorter = m
return m
