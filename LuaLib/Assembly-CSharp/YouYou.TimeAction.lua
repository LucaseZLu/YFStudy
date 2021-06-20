---@class YouYou.TimeAction : System.Object
---@field public IsRuning boolean
local m = {}

---@param delayTime number
---@param interval number
---@param loop number
---@param onStar fun()
---@param onUpdate fun(obj:number)
---@param onComplete fun()
---@return YouYou.TimeAction
function m:Init(delayTime, interval, loop, onStar, onUpdate, onComplete) end

function m:Run() end

function m:Pause() end

function m:Stop() end

function m:OnUpdate() end

YouYou.TimeAction = m
return m
