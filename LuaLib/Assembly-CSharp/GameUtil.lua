---@class GameUtil : System.Object
local m = {}

---@static
---@param parent UnityEngine.Transform
---@param prefab UnityEngine.GameObject
---@return UnityEngine.GameObject
function m.AddChild(parent, prefab) end

---@static
---@param path string
---@return string
function m.GetUIResPath(path) end

GameUtil = m
return m
