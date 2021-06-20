---@class UnityEngine.Snapping : System.Object
local m = {}

---@overload fun(val:UnityEngine.Vector2, snap:UnityEngine.Vector2): @static
---@overload fun(val:UnityEngine.Vector3, snap:UnityEngine.Vector3, axis:UnityEngine.SnapAxis): @static
---@overload fun(val:UnityEngine.Vector3, snap:UnityEngine.Vector3): @static
---@static
---@param val number
---@param snap number
---@return number
function m.Snap(val, snap) end

UnityEngine.Snapping = m
return m
