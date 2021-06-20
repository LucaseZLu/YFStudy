---@class UnityEngine.LowLevel.PlayerLoop : System.Object
local m = {}

---@static
---@return UnityEngine.LowLevel.PlayerLoopSystem
function m.GetDefaultPlayerLoop() end

---@static
---@return UnityEngine.LowLevel.PlayerLoopSystem
function m.GetCurrentPlayerLoop() end

---@static
---@param loop UnityEngine.LowLevel.PlayerLoopSystem
function m.SetPlayerLoop(loop) end

UnityEngine.LowLevel.PlayerLoop = m
return m
