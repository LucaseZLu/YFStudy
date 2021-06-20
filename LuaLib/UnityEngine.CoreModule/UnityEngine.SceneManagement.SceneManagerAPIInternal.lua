---@class UnityEngine.SceneManagement.SceneManagerAPIInternal : System.Object
local m = {}

---@static
---@return number
function m.GetNumScenesInBuildSettings() end

---@static
---@param buildIndex number
---@return UnityEngine.SceneManagement.Scene
function m.GetSceneByBuildIndex(buildIndex) end

---@static
---@param sceneName string
---@param sceneBuildIndex number
---@param parameters UnityEngine.SceneManagement.LoadSceneParameters
---@param mustCompleteNextFrame boolean
---@return UnityEngine.AsyncOperation
function m.LoadSceneAsyncNameIndexInternal(sceneName, sceneBuildIndex, parameters, mustCompleteNextFrame) end

---@static
---@param sceneName string
---@param sceneBuildIndex number
---@param immediately boolean
---@param options UnityEngine.SceneManagement.UnloadSceneOptions
---@return UnityEngine.AsyncOperation, System.Boolean
function m.UnloadSceneNameIndexInternal(sceneName, sceneBuildIndex, immediately, options) end

UnityEngine.SceneManagement.SceneManagerAPIInternal = m
return m
