---@class UnityEngine.TextAsset : UnityEngine.Object
---@field public bytes string
---@field public text string
local m = {}

---@virtual
---@return string
function m:ToString() end

UnityEngine.TextAsset = m
return m
