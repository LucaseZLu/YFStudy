---@class YouYou.ResourceLoaderManager : YouYou.ManagerBase
local m = {}

function m:InitAssetInfo() end

---@param assetCategory AssetCategory
---@param assetFullName string
---@return YouYou.AssetEntity
function m:GetAssetEntity(assetCategory, assetFullName) end

---@overload fun(assetbundlePath:string, onUpdate:fun(obj:number))
---@overload fun(assetbundlePath:string)
---@param assetbundlePath string
---@param onUpdate fun(obj:number)
---@param onComplete fun(obj:UnityEngine.AssetBundle)
function m:LoadAssetBundle(assetbundlePath, onUpdate, onComplete) end

---@overload fun(assetName:string, assetBundle:UnityEngine.AssetBundle, onUpdate:fun(obj:number))
---@overload fun(assetName:string, assetBundle:UnityEngine.AssetBundle)
---@param assetName string
---@param assetBundle UnityEngine.AssetBundle
---@param onUpdate fun(obj:number)
---@param onComplete fun(obj:UnityEngine.Object)
function m:LoadAsset(assetName, assetBundle, onUpdate, onComplete) end

---@overload fun(assetCategory:AssetCategory, assetFullName:string)
---@param assetCategory AssetCategory
---@param assetFullName string
---@param onComplete fun(t1:YouYou.ResourceEntity)
function m:LoadMainAsset(assetCategory, assetFullName, onComplete) end

---@param gameObject UnityEngine.GameObject
function m:UnloadGameObject(gameObject) end

function m:OnUpdate() end

---@virtual
function m:Dispose() end

YouYou.ResourceLoaderManager = m
return m
