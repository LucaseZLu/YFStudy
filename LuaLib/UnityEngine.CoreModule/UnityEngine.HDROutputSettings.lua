---@class UnityEngine.HDROutputSettings : System.Object
---@field public displays UnityEngine.HDROutputSettings[] @static
---@field public main UnityEngine.HDROutputSettings @static
---@field public active boolean
---@field public available boolean
---@field public automaticHDRTonemapping boolean
---@field public displayColorGamut UnityEngine.ColorGamut
---@field public format UnityEngine.RenderTextureFormat
---@field public graphicsFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field public paperWhiteNits number
---@field public maxFullFrameToneMapLuminance number
---@field public maxToneMapLuminance number
---@field public minToneMapLuminance number
---@field public HDRModeChangeRequested boolean
local m = {}

---@param enabled boolean
function m:RequestHDRModeChange(enabled) end

---@static
---@param paperWhite number
function m.SetPaperWhiteInNits(paperWhite) end

UnityEngine.HDROutputSettings = m
return m
