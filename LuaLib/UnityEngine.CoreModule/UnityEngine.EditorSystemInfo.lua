---@class UnityEngine.EditorSystemInfo : System.Object
---@field public unsupportedIdentifier string @static
---@field public batteryLevel number @static
---@field public batteryStatus UnityEngine.BatteryStatus @static
---@field public operatingSystem string @static
---@field public operatingSystemFamily UnityEngine.OperatingSystemFamily @static
---@field public processorType string @static
---@field public processorFrequency number @static
---@field public processorCount number @static
---@field public systemMemorySize number @static
---@field public deviceUniqueIdentifier string @static
---@field public deviceName string @static
---@field public deviceModel string @static
---@field public supportsAccelerometer boolean @static
---@field public supportsGyroscope boolean @static
---@field public supportsLocationService boolean @static
---@field public supportsVibration boolean @static
---@field public supportsAudio boolean @static
---@field public deviceType UnityEngine.DeviceType @static
---@field public graphicsMemorySize number @static
---@field public graphicsDeviceName string @static
---@field public graphicsDeviceVendor string @static
---@field public graphicsDeviceID number @static
---@field public graphicsDeviceVendorID number @static
---@field public graphicsDeviceType UnityEngine.Rendering.GraphicsDeviceType @static
---@field public graphicsUVStartsAtTop boolean @static
---@field public graphicsDeviceVersion string @static
---@field public graphicsShaderLevel number @static
---@field public graphicsMultiThreaded boolean @static
---@field public renderingThreadingMode UnityEngine.Rendering.RenderingThreadingMode @static
---@field public hasHiddenSurfaceRemovalOnGPU boolean @static
---@field public hasDynamicUniformArrayIndexingInFragmentShaders boolean @static
---@field public supportsShadows boolean @static
---@field public supportsRawShadowDepthSampling boolean @static
---@field public supportsRenderTextures boolean @static
---@field public supportsMotionVectors boolean @static
---@field public supportsRenderToCubemap boolean @static
---@field public supportsImageEffects boolean @static
---@field public supports3DTextures boolean @static
---@field public supportsCompressed3DTextures boolean @static
---@field public supports2DArrayTextures boolean @static
---@field public supports3DRenderTextures boolean @static
---@field public supportsCubemapArrayTextures boolean @static
---@field public copyTextureSupport UnityEngine.Rendering.CopyTextureSupport @static
---@field public supportsComputeShaders boolean @static
---@field public supportsGeometryShaders boolean @static
---@field public supportsTessellationShaders boolean @static
---@field public supportsRenderTargetArrayIndexFromVertexShader boolean @static
---@field public supportsInstancing boolean @static
---@field public supportsHardwareQuadTopology boolean @static
---@field public supports32bitsIndexBuffer boolean @static
---@field public supportsSparseTextures boolean @static
---@field public supportedRenderTargetCount number @static
---@field public supportsSeparatedRenderTargetsBlend boolean @static
---@field public supportedRandomWriteTargetCount number @static
---@field public supportsMultisampledTextures number @static
---@field public supportsMultisampled2DArrayTextures boolean @static
---@field public supportsMultisampleAutoResolve boolean @static
---@field public supportsTextureWrapMirrorOnce number @static
---@field public usesReversedZBuffer boolean @static
---@field public supportsStencil number @static
---@field public npotSupport UnityEngine.NPOTSupport @static
---@field public maxTextureSize number @static
---@field public maxCubemapSize number @static
---@field public maxComputeBufferInputsVertex number @static
---@field public maxComputeBufferInputsFragment number @static
---@field public maxComputeBufferInputsGeometry number @static
---@field public maxComputeBufferInputsDomain number @static
---@field public maxComputeBufferInputsHull number @static
---@field public maxComputeBufferInputsCompute number @static
---@field public maxComputeWorkGroupSize number @static
---@field public maxComputeWorkGroupSizeX number @static
---@field public maxComputeWorkGroupSizeY number @static
---@field public maxComputeWorkGroupSizeZ number @static
---@field public supportsAsyncCompute boolean @static
---@field public supportsGpuRecorder boolean @static
---@field public supportsGraphicsFence boolean @static
---@field public supportsAsyncGPUReadback boolean @static
---@field public supportsRayTracing boolean @static
---@field public supportsSetConstantBuffer boolean @static
---@field public constantBufferOffsetAlignment number @static
---@field public minConstantBufferOffsetAlignment boolean @static
---@field public hasMipMaxLevel boolean @static
---@field public supportsMipStreaming boolean @static
---@field public graphicsPixelFillrate number @static
---@field public usesLoadStoreActions boolean @static
---@field public hdrDisplaySupportFlags UnityEngine.HDRDisplaySupportFlags @static
---@field public supportsConservativeRaster boolean @static
---@field public supportsMultiview boolean @static
---@field public supportsStoreAndResolveAction boolean @static
---@field public supportsVertexPrograms boolean @static
local m = {}

---@static
---@param format UnityEngine.RenderTextureFormat
---@return boolean
function m.SupportsRenderTextureFormat(format) end

---@static
---@param format UnityEngine.RenderTextureFormat
---@return boolean
function m.SupportsBlendingOnRenderTextureFormat(format) end

---@static
---@param format UnityEngine.TextureFormat
---@return boolean
function m.SupportsTextureFormat(format) end

---@static
---@param format UnityEngine.Rendering.VertexAttributeFormat
---@param dimension number
---@return boolean
function m.SupportsVertexAttributeFormat(format, dimension) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param usage UnityEngine.Experimental.Rendering.FormatUsage
---@return boolean
function m.IsFormatSupported(format, usage) end

---@static
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param usage UnityEngine.Experimental.Rendering.FormatUsage
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function m.GetCompatibleFormat(format, usage) end

---@static
---@param format UnityEngine.Experimental.Rendering.DefaultFormat
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function m.GetGraphicsFormat(format) end

---@static
---@param desc UnityEngine.RenderTextureDescriptor
---@return number
function m.GetRenderTextureSupportedMSAASampleCount(desc) end

UnityEngine.EditorSystemInfo = m
return m
