---@class UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStoppedCallback : System.MulticastDelegate
local m = {}

---@virtual
---@param result UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult
function m:Invoke(result) end

---@virtual
---@param result UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(result, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Windows.WebCam.PhotoCapture.OnPhotoModeStoppedCallback = m
return m
