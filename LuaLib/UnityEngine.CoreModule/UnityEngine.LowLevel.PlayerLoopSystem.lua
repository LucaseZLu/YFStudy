---@class UnityEngine.LowLevel.PlayerLoopSystem : System.ValueType
---@field public type System.Type
---@field public subSystemList UnityEngine.LowLevel.PlayerLoopSystem[]
---@field public updateDelegate fun()
---@field public updateFunction System.IntPtr
---@field public loopConditionFunction System.IntPtr
local m = {}

---@virtual
---@return string
function m:ToString() end

UnityEngine.LowLevel.PlayerLoopSystem = m
return m
