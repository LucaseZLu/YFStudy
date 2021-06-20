---@class YouYou.MainAssetLoaderRoutine : System.Object
local m = {}

---@overload fun(assetCategory:AssetCategory, assetFullName:string)
---@param assetCategory AssetCategory
---@param assetFullName string
---@param onComplete fun(t1:YouYou.ResourceEntity)
function m:Load(assetCategory, assetFullName, onComplete) end

YouYou.MainAssetLoaderRoutine = m
return m
