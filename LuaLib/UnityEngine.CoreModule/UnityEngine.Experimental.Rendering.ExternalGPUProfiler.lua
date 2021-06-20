---@class UnityEngine.Experimental.Rendering.ExternalGPUProfiler : System.Object
local m = {}

---@static
function m.BeginGPUCapture() end

---@static
function m.EndGPUCapture() end

---@static
---@return boolean
function m.IsAttached() end

UnityEngine.Experimental.Rendering.ExternalGPUProfiler = m
return m
