---@class UnityEngine.ScreenShimBase : System.Object
---@field public width number
---@field public height number
---@field public dpi number
---@field public currentResolution UnityEngine.Resolution
---@field public resolutions UnityEngine.Resolution[]
---@field public fullScreen boolean
---@field public fullScreenMode UnityEngine.FullScreenMode
---@field public safeArea UnityEngine.Rect
---@field public cutouts UnityEngine.Rect[]
---@field public autorotateToPortrait boolean
---@field public autorotateToPortraitUpsideDown boolean
---@field public autorotateToLandscapeLeft boolean
---@field public autorotateToLandscapeRight boolean
---@field public orientation UnityEngine.ScreenOrientation
---@field public sleepTimeout number
---@field public brightness number
local m = {}

---@virtual
function m:Dispose() end

---@return boolean
function m:IsActive() end

---@virtual
---@param width number
---@param height number
---@param fullscreenMode UnityEngine.FullScreenMode
---@param preferredRefreshRate number
function m:SetResolution(width, height, fullscreenMode, preferredRefreshRate) end

UnityEngine.ScreenShimBase = m
return m
