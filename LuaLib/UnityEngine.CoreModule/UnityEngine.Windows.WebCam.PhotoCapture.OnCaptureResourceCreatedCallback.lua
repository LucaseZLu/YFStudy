---@class UnityEngine.Windows.WebCam.PhotoCapture.OnCaptureResourceCreatedCallback : System.MulticastDelegate
local m = {}

---@virtual
---@param captureObject UnityEngine.Windows.WebCam.PhotoCapture
function m:Invoke(captureObject) end

---@virtual
---@param captureObject UnityEngine.Windows.WebCam.PhotoCapture
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(captureObject, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Windows.WebCam.PhotoCapture.OnCaptureResourceCreatedCallback = m
return m
