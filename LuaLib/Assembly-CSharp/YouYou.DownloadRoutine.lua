---@class YouYou.DownloadRoutine : System.Object
local m = {}

---@overload fun(url:string, assetBundleInfo:YouYou.AssetBundleInfoEntity, onUpdate:fun(t1:string, t2:number, t3:number))
---@overload fun(url:string, assetBundleInfo:YouYou.AssetBundleInfoEntity)
---@param url string
---@param assetBundleInfo YouYou.AssetBundleInfoEntity
---@param onUpdate fun(t1:string, t2:number, t3:number)
---@param onComplete fun(t1:string, t2:YouYou.DownloadRoutine)
function m:BeginDownload(url, assetBundleInfo, onUpdate, onComplete) end

function m:Reset() end

function m:OnUpdate() end

YouYou.DownloadRoutine = m
return m
