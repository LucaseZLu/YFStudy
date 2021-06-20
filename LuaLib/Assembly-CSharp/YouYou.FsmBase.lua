---@class YouYou.FsmBase : System.Object
---@field public CurrStateType number
---@field public FsmId number
---@field public Owner System.Type
local m = {}

---@abstract
function m:ShutDown() end

YouYou.FsmBase = m
return m
