---@class YouYou.ResourceComponent : YouYou.YouYouBaseComponent
---@field public LocalFilePath string
---@field public ResourceManager YouYou.ResourceManager
---@field public ResourceLoaderManager YouYou.ResourceLoaderManager
local m = {}

function m:InitStreamingAssetsBundleInfo() end

function m:InitAssetInfo() end

---@param path string
---@return string
function m:GetLastPathName(path) end

---@virtual
function m:Shutdown() end

---@virtual
function m:OnUpdate() end

---@param sceneName string
---@return string
function m:GetSceneAssetBundlePath(sceneName) end

YouYou.ResourceComponent = m
return m
