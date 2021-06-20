---@class YouYou.FsmState_1_YouYou_ProcedureManager_ : System.Object
---@field public CurrFsm YouYou.Fsm_1_YouYou_ProcedureManager_
local m = {}

---@virtual
function m:OnEnter() end

---@virtual
function m:OnUpdate() end

---@virtual
function m:OnLeave() end

---@virtual
function m:OnDestroy() end

YouYou.FsmState_1_YouYou_ProcedureManager_ = m
return m
