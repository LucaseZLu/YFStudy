---@class YouYou.YouYouComponent : UnityEngine.MonoBehaviour
---@field public InstanceId number
local m = {}

---@abstract
function m:Shutdown() end

YouYou.YouYouComponent = m
return m
