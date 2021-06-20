---@class UnityEngine.Windows.WebCam.VideoCapture : System.Object
---@field public SupportedResolutions System.Collections.Generic.IEnumerable_1_UnityEngine_Resolution_ @static
---@field public IsRecording boolean
local m = {}

---@static
---@param resolution UnityEngine.Resolution
---@return System.Collections.Generic.IEnumerable_1_System_Single_
function m.GetSupportedFrameRatesForResolution(resolution) end

---@overload fun(onCreatedCallback:fun(captureObject:UnityEngine.Windows.WebCam.VideoCapture)) @static
---@static
---@param showHolograms boolean
---@param onCreatedCallback fun(captureObject:UnityEngine.Windows.WebCam.VideoCapture)
function m.CreateAsync(showHolograms, onCreatedCallback) end

---@param setupParams UnityEngine.Windows.WebCam.CameraParameters
---@param audioState UnityEngine.Windows.WebCam.VideoCapture.AudioState
---@param onVideoModeStartedCallback fun(result:UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult)
function m:StartVideoModeAsync(setupParams, audioState, onVideoModeStartedCallback) end

---@param onVideoModeStoppedCallback fun(result:UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult)
function m:StopVideoModeAsync(onVideoModeStoppedCallback) end

---@param filename string
---@param onStartedRecordingVideoCallback fun(result:UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult)
function m:StartRecordingAsync(filename, onStartedRecordingVideoCallback) end

---@param onStoppedRecordingVideoCallback fun(result:UnityEngine.Windows.WebCam.VideoCapture.VideoCaptureResult)
function m:StopRecordingAsync(onStoppedRecordingVideoCallback) end

---@return System.IntPtr
function m:GetUnsafePointerToVideoDeviceController() end

---@virtual
function m:Dispose() end

UnityEngine.Windows.WebCam.VideoCapture = m
return m
