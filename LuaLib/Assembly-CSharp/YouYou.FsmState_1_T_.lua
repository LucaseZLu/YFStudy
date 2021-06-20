---@class YouYou.FsmState_1_T_ : System.Object
---@field public CurrFsm YouYou.FsmBase
local m = {}

---@virtual
function m:OnEnter() end

---@virtual
function m:OnUpdate() end

---@virtual
function m:OnLeave() end

---@virtual
function m:OnDestroy() end

YouYou.FsmState_1_T_ = m
return m
