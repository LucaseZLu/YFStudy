---@class YouYou.SceneLoaderRoutine : System.Object
local m = {}

---@param sceneDetailId number
---@param sceneName string
---@param onProgressUpdate fun(t1:number, t2:number)
---@param onLoadSceneComplete fun(t1:YouYou.SceneLoaderRoutine)
function m:LoadScene(sceneDetailId, sceneName, onProgressUpdate, onLoadSceneComplete) end

---@param sceneName string
---@param onUnLoadSceneComplete fun(t1:YouYou.SceneLoaderRoutine)
function m:UnLoadScene(sceneName, onUnLoadSceneComplete) end

function m:OnUpdate() end

YouYou.SceneLoaderRoutine = m
return m
