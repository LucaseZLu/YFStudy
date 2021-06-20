---@class YouYou.FsmComponent : YouYou.YouYouBaseComponent
local m = {}

---@param owner any
---@param states any[]
---@return YouYou.FsmBase
function m:Create(owner, states) end

---@param fsmId number
function m:DestroyFsm(fsmId) end

---@virtual
function m:Shutdown() end

YouYou.FsmComponent = m
return m
