---@class YouYou.ProcedureLaunch : YouYou.ProcedureBase
local m = {}

---@virtual
function m:OnEnter() end

---@virtual
function m:OnUpdate() end

---@virtual
function m:OnLeave() end

---@virtual
function m:OnDestroy() end

YouYou.ProcedureLaunch = m
return m
