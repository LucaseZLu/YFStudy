---@class Sys_SceneDetailDBModel : YouYou.DataTableDBModelBase_2_Sys_SceneDetailDBModel_Sys_SceneDetailEntity_
---@field public DataTableName string
local m = {}

---@param sceneId number
---@param sceneGrade number
---@return Sys_SceneDetailEntity[]
function m:GetListBySceneId(sceneId, sceneGrade) end

Sys_SceneDetailDBModel = m
return m
