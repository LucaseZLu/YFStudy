---@class UnityEngine.InternalStaticBatchingUtility : System.Object
local m = {}

---@static
---@param staticBatchRoot UnityEngine.GameObject
---@param sorter UnityEngine.InternalStaticBatchingUtility.StaticBatcherGOSorter
function m.CombineRoot(staticBatchRoot, sorter) end

---@static
---@param staticBatchRoot UnityEngine.GameObject
---@param combineOnlyStatic boolean
---@param isEditorPostprocessScene boolean
---@param sorter UnityEngine.InternalStaticBatchingUtility.StaticBatcherGOSorter
function m.Combine(staticBatchRoot, combineOnlyStatic, isEditorPostprocessScene, sorter) end

---@static
---@param gos UnityEngine.GameObject[]
---@param sorter UnityEngine.InternalStaticBatchingUtility.StaticBatcherGOSorter
---@return UnityEngine.GameObject[]
function m.SortGameObjectsForStaticbatching(gos, sorter) end

---@static
---@param gos UnityEngine.GameObject[]
---@param staticBatchRoot UnityEngine.GameObject
---@param isEditorPostprocessScene boolean
---@param sorter UnityEngine.InternalStaticBatchingUtility.StaticBatcherGOSorter
function m.CombineGameObjects(gos, staticBatchRoot, isEditorPostprocessScene, sorter) end

UnityEngine.InternalStaticBatchingUtility = m
return m
