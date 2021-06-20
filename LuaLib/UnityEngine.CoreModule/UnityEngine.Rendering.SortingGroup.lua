---@class UnityEngine.Rendering.SortingGroup : UnityEngine.Behaviour
---@field public sortingLayerName string
---@field public sortingLayerID number
---@field public sortingOrder number
local m = {}

---@static
function m.UpdateAllSortingGroups() end

UnityEngine.Rendering.SortingGroup = m
return m
