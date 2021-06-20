---@class UnityEngine.Windows.WebCam.VideoCapture.OnVideoCaptureResourceCreatedCallback : System.MulticastDelegate
local m = {}

---@virtual
---@param captureObject UnityEngine.Windows.WebCam.VideoCapture
function m:Invoke(captureObject) end

---@virtual
---@param captureObject UnityEngine.Windows.WebCam.VideoCapture
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(captureObject, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Windows.WebCam.VideoCapture.OnVideoCaptureResourceCreatedCallback = m
return m
