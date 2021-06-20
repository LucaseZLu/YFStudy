---@class UnityEngine.Windows.WebCam.PhotoCaptureFrame : System.Object
---@field public dataLength number
---@field public hasLocationData boolean
---@field public pixelFormat UnityEngine.Windows.WebCam.CapturePixelFormat
local m = {}

---@return boolean, UnityEngine.Matrix4x4
function m:TryGetCameraToWorldMatrix() end

---@overload fun(nearClipPlane:number, farClipPlane:number):(, UnityEngine.Matrix4x4)
---@return boolean, UnityEngine.Matrix4x4
function m:TryGetProjectionMatrix() end

---@param targetTexture UnityEngine.Texture2D
function m:UploadImageDataToTexture(targetTexture) end

---@return System.IntPtr
function m:GetUnsafePointerToBuffer() end

---@param byteBuffer number[]
function m:CopyRawImageDataIntoBuffer(byteBuffer) end

---@virtual
function m:Dispose() end

UnityEngine.Windows.WebCam.PhotoCaptureFrame = m
return m
