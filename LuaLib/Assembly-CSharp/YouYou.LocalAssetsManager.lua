---@class YouYou.LocalAssetsManager : System.Object
---@field public LocalVersionFilePath string
local m = {}

---@return boolean
function m:GetVersionFileExists() end

---@param path string
---@return string
function m:GetFileBuffer(path) end

---@param path string
---@return boolean
function m:CheckFileExists(path) end

---@param version string
function m:SetResourceVersion(version) end

---@param dic System.Collections.Generic.Dictionary_2_System_String_YouYou_AssetBundleInfoEntity_
function m:SaveVersionFile(dic) end

---@param version System.String
---@return System.Collections.Generic.Dictionary_2_System_String_YouYou_AssetBundleInfoEntity_, System.String
function m:GetAssetBundleVersionList(version) end

YouYou.LocalAssetsManager = m
return m
