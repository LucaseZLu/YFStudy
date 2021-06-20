---@class YouYou.FsmManager : YouYou.ManagerBase
local m = {}

---@param fsmId number
---@param owner any
---@param states any[]
---@return YouYou.FsmBase
function m:Create(fsmId, owner, states) end

---@param fsmId number
function m:DestroyFsm(fsmId) end

---@virtual
function m:Dispose() end

YouYou.FsmManager = m
return m
