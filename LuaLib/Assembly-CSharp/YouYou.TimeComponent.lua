---@class YouYou.TimeComponent : YouYou.YouYouBaseComponent
local m = {}

---@return YouYou.TimeAction
function m:CreateTimeAction() end

---@virtual
function m:OnUpdate() end

---@virtual
function m:Shutdown() end

YouYou.TimeComponent = m
return m
