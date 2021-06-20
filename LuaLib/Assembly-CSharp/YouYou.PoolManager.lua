---@class YouYou.PoolManager : YouYou.ManagerBase
---@field public ClassObjectPool YouYou.ClassObjectPool
---@field public GameObjectPool YouYou.GameObjectPool
---@field public AssetBundlePool YouYou.ResourcePool
---@field public AssetPool table<AssetCategory, YouYou.ResourcePool>
local m = {}

function m:ReleaseClassObjectPool() end

function m:ReleaseAssetBundlePool() end

function m:ReleaseAssetPool() end

---@virtual
function m:Dispose() end

YouYou.PoolManager = m
return m
