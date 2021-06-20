---@class YouYou.VarGameObject : YouYou.Variable_1_UnityEngine_GameObject_
local m = {}

---@overload fun(value:UnityEngine.GameObject): @static
---@static
---@return YouYou.VarGameObject
function m.Alloc() end

---@static
---@param value YouYou.VarGameObject
---@return UnityEngine.GameObject
function m.op_Implicit(value) end

YouYou.VarGameObject = m
return m
