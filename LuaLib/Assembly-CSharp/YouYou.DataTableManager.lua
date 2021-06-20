---@class YouYou.DataTableManager : YouYou.ManagerBase
---@field public TotalTableCount number
---@field public CurrLoadTableCount number
---@field public m_DataTableBundle UnityEngine.AssetBundle
---@field public LocalizationDBModel LocalizationDBModel
---@field public Sys_CodeDBModel Sys_CodeDBModel
---@field public Sys_EffectDBModel Sys_EffectDBModel
---@field public Sys_PrefabDBModel Sys_PrefabDBModel
---@field public Sys_SoundDBModel Sys_SoundDBModel
---@field public Sys_StorySoundDBModel Sys_StorySoundDBModel
---@field public Sys_UIFormDBModel Sys_UIFormDBModel
---@field public Sys_SceneDBModel Sys_SceneDBModel
---@field public Sys_SceneDetailDBModel Sys_SceneDetailDBModel
---@field public ChapterDBModel ChapterDBModel
---@field public GameLevelDBModel GameLevelDBModel
---@field public TaskDBModel TaskDBModel
local m = {}

function m:LoadDataTable() end

function m:LoadDataTableAsync() end

---@param tableName string
---@param onComplete fun(t1:string)
function m:GetDataTableBuffer(tableName, onComplete) end

function m:Clear() end

YouYou.DataTableManager = m
return m
