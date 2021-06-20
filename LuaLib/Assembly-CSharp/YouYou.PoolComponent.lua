---@class YouYou.PoolComponent : YouYou.YouYouBaseComponent
---@field public LockedAssetBundle string[]
---@field public VarObjectInspectorDic table<System.Type, number>
---@field public ReleaseClassObjectInterval number
---@field public ReleaseAssetBundleInterval number
---@field public ReleaseAssetInterval number
---@field public ShowAssetPool boolean
---@field public PoolManager YouYou.PoolManager
---@field public FontDic System.Collections.Generic.Dictionary_2_System_String_YouYou_ResourceEntity_
local m = {}

---@param assetBundleName string
---@return boolean
function m:CheckAssetBundleIsLock(assetBundleName) end

---@param count number
function m:SetClassObjectResideCount(count) end

---@return any
function m:DequeueClassObject() end

---@param obj any
function m:EnqueueClassObject(obj) end

---@return YouYou.VariableBase
function m:DequeueVarObject() end

---@param item YouYou.VariableBase
function m:EnqueueVarObject(item) end

---@virtual
function m:Shutdown() end

---@virtual
function m:OnUpdate() end

function m:InitGameObjectPool() end

---@param poolId number
---@param onComplete fun(obj:UnityEngine.Transform)
function m:GameObjectSpawn(poolId, onComplete) end

---@param poolId number
---@param instance UnityEngine.Transform
function m:GameObjectDespawn(poolId, instance) end

---@param instanceId number
---@param resourceEntity YouYou.ResourceEntity
function m:RegisterInstanceResource(instanceId, resourceEntity) end

---@param instanceId number
function m:ReleaseInstanceResource(instanceId) end

YouYou.PoolComponent = m
return m
