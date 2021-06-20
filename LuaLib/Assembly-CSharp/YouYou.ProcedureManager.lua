---@class YouYou.ProcedureManager : YouYou.ManagerBase
---@field public CurrFsm YouYou.Fsm_1_YouYou_ProcedureManager_
---@field public CurrProcedureState YouYou.ProcedureState
---@field public CurrProcedure YouYou.FsmState_1_YouYou_ProcedureManager_
local m = {}

function m:Init() end

---@param state YouYou.ProcedureState
function m:ChangeState(state) end

function m:OnUpdate() end

---@virtual
function m:Dispose() end

YouYou.ProcedureManager = m
return m
