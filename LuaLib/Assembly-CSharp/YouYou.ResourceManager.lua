---@class YouYou.ResourceManager : YouYou.ManagerBase
---@field public StreamingAssetsManager YouYou.StreamingAssetsManager
---@field public LocalAssetsManager YouYou.LocalAssetsManager
---@field public CDNVersion string
local m = {}

---@static
---@param buffer string
---@param version System.String
---@return System.Collections.Generic.Dictionary_2_System_String_YouYou_AssetBundleInfoEntity_, System.String
function m.GetAssetBundleVersionList(buffer, version) end

function m:InitStreamingAssetsBundleInfo() end

---@param entity YouYou.AssetBundleInfoEntity
function m:SaveVersion(entity) end

function m:SetResourceVersion() end

---@param assetbundlePath string
---@return YouYou.AssetBundleInfoEntity
function m:GetAssetBundleInfo(assetbundlePath) end

---@virtual
function m:Dispose() end

YouYou.ResourceManager = m
return m
