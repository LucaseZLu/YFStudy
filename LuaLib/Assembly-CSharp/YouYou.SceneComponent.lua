---@class YouYou.SceneComponent : YouYou.YouYouBaseComponent
local m = {}

---@overload fun(sceneId:number, showLoadingForm:boolean)
---@overload fun(sceneId:number)
---@param sceneId number
---@param showLoadingForm boolean
---@param onComplete fun()
function m:LoadScene(sceneId, showLoadingForm, onComplete) end

---@virtual
function m:Shutdown() end

---@virtual
function m:OnUpdate() end

YouYou.SceneComponent = m
return m
