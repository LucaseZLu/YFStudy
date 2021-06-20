---@class UnityEngine.Apple.FrameCapture : System.Object
local m = {}

---@static
---@param dest UnityEngine.Apple.FrameCaptureDestination
---@return boolean
function m.IsDestinationSupported(dest) end

---@static
function m.BeginCaptureToXcode() end

---@static
---@param path string
function m.BeginCaptureToFile(path) end

---@static
function m.EndCapture() end

---@static
function m.CaptureNextFrameToXcode() end

---@static
---@param path string
function m.CaptureNextFrameToFile(path) end

UnityEngine.Apple.FrameCapture = m
return m
