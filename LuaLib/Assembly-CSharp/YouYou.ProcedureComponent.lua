---@class YouYou.ProcedureComponent : YouYou.YouYouBaseComponent
---@field public CurrProcedureState YouYou.ProcedureState
---@field public CurrProcedure YouYou.FsmState_1_YouYou_ProcedureManager_
local m = {}

---@param key string
---@param value any
function m:SetData(key, value) end

---@param key string
---@return any
function m:GetData(key) end

---@param state YouYou.ProcedureState
function m:ChangeState(state) end

---@virtual
function m:OnUpdate() end

---@virtual
function m:Shutdown() end

YouYou.ProcedureComponent = m
return m
