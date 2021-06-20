---@class YouYou.DataComponent : YouYou.YouYouBaseComponent
---@field public CacheDataManager CacheDataManager
---@field public SysDataManager SysDataManager
---@field public UserDataManager UserDataManager
---@field public PVEMapDataManager PVEMapDataManager
local m = {}

---@virtual
function m:Shutdown() end

YouYou.DataComponent = m
return m
