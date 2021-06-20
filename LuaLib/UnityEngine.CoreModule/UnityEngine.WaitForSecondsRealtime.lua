---@class UnityEngine.WaitForSecondsRealtime : UnityEngine.CustomYieldInstruction
---@field public waitTime number
---@field public keepWaiting boolean
local m = {}

---@virtual
function m:Reset() end

UnityEngine.WaitForSecondsRealtime = m
return m
