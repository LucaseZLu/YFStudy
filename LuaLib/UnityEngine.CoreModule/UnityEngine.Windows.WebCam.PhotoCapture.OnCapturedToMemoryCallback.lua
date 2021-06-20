---@class UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToMemoryCallback : System.MulticastDelegate
local m = {}

---@virtual
---@param result UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult
---@param photoCaptureFrame UnityEngine.Windows.WebCam.PhotoCaptureFrame
function m:Invoke(result, photoCaptureFrame) end

---@virtual
---@param result UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult
---@param photoCaptureFrame UnityEngine.Windows.WebCam.PhotoCaptureFrame
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(result, photoCaptureFrame, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Windows.WebCam.PhotoCapture.OnCapturedToMemoryCallback = m
return m
