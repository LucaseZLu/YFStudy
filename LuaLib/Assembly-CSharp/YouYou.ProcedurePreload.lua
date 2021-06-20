---@class YouYou.ProcedurePreload : YouYou.ProcedureBase
local m = {}

---@virtual
function m:OnEnter() end

---@virtual
function m:OnUpdate() end

---@virtual
function m:OnLeave() end

YouYou.ProcedurePreload = m
return m
