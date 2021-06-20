---@class YouYou.GameObjectPool : System.Object
local m = {}

---@virtual
function m:Dispose() end

---@param arr GameObjectPoolEntity[]
---@param parent UnityEngine.Transform
---@return System.Collections.IEnumerator
function m:Init(arr, parent) end

---@param prefabId number
---@param onComplete fun(obj:UnityEngine.Transform)
function m:Spawn(prefabId, onComplete) end

---@overload fun(instance:UnityEngine.Transform)
---@param poolId number
---@param instance UnityEngine.Transform
function m:Despawn(poolId, instance) end

YouYou.GameObjectPool = m
return m
