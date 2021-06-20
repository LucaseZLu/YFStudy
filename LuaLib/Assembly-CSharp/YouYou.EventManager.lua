---@class YouYou.EventManager : YouYou.ManagerBase
---@field public SocketEvent YouYou.SocketEvent
---@field public CommonEvent YouYou.CommonEvent
local m = {}

---@virtual
function m:Dispose() end

YouYou.EventManager = m
return m
