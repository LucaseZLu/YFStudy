---@class UnityEngine.Windows.WebCam.PhotoCapture : System.Object
---@field public SupportedResolutions System.Collections.Generic.IEnumerable_1_UnityEngine_Resolution_ @static
local m = {}

---@overload fun(onCreatedCallback:fun(captureObject:UnityEngine.Windows.WebCam.PhotoCapture)) @static
---@static
---@param showHolograms boolean
---@param onCreatedCallback fun(captureObject:UnityEngine.Windows.WebCam.PhotoCapture)
function m.CreateAsync(showHolograms, onCreatedCallback) end

---@param setupParams UnityEngine.Windows.WebCam.CameraParameters
---@param onPhotoModeStartedCallback fun(result:UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult)
function m:StartPhotoModeAsync(setupParams, onPhotoModeStartedCallback) end

---@param onPhotoModeStoppedCallback fun(result:UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult)
function m:StopPhotoModeAsync(onPhotoModeStoppedCallback) end

---@overload fun(onCapturedPhotoToMemoryCallback:fun(result:UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult, photoCaptureFrame:UnityEngine.Windows.WebCam.PhotoCaptureFrame))
---@param filename string
---@param fileOutputFormat UnityEngine.Windows.WebCam.PhotoCaptureFileOutputFormat
---@param onCapturedPhotoToDiskCallback fun(result:UnityEngine.Windows.WebCam.PhotoCapture.PhotoCaptureResult)
function m:TakePhotoAsync(filename, fileOutputFormat, onCapturedPhotoToDiskCallback) end

---@return System.IntPtr
function m:GetUnsafePointerToVideoDeviceController() end

---@virtual
function m:Dispose() end

UnityEngine.Windows.WebCam.PhotoCapture = m
return m
