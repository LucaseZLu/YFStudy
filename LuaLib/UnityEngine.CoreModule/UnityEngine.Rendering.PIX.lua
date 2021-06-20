---@class UnityEngine.Rendering.PIX : System.Object
local m = {}

---@static
function m.BeginGPUCapture() end

---@static
function m.EndGPUCapture() end

---@static
---@return boolean
function m.IsAttached() end

UnityEngine.Rendering.PIX = m
return m
