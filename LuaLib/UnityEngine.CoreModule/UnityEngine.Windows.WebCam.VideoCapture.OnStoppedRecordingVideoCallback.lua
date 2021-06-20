---@class UnityEngine.Windows.WebCam.VideoCapture.OnStoppedRecordingVideoCallback : System.MulticastDelegate
local m = {}

---@virtual
---@param result UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult
function m:Invoke(result) end

---@virtual
---@param result UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(result, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

UnityEngine.Windows.WebCam.VideoCapture.OnStoppedRecordingVideoCallback = m
return m
