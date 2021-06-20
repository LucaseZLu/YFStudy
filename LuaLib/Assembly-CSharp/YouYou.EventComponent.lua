---@class YouYou.EventComponent : YouYou.YouYouBaseComponent
---@field public SocketEvent YouYou.SocketEvent
---@field public CommonEvent YouYou.CommonEvent
local m = {}

---@virtual
function m:Shutdown() end

YouYou.EventComponent = m
return m
