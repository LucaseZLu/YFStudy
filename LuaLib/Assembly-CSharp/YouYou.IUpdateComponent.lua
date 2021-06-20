---@class YouYou.IUpdateComponent : table
---@field public InstanceId number
local m = {}

---@abstract
function m:OnUpdate() end

YouYou.IUpdateComponent = m
return m
