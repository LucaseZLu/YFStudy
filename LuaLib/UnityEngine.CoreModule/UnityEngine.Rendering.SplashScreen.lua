---@class UnityEngine.Rendering.SplashScreen : System.Object
---@field public isFinished boolean @static
local m = {}

---@static
function m.Begin() end

---@static
---@param stopBehavior UnityEngine.Rendering.SplashScreen.StopBehavior
function m.Stop(stopBehavior) end

---@static
function m.Draw() end

UnityEngine.Rendering.SplashScreen = m
return m
