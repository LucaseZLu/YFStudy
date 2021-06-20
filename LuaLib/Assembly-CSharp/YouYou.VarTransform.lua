---@class YouYou.VarTransform : YouYou.Variable_1_UnityEngine_Transform_
local m = {}

---@overload fun(value:UnityEngine.Transform): @static
---@static
---@return YouYou.VarTransform
function m.Alloc() end

---@static
---@param value YouYou.VarTransform
---@return UnityEngine.Transform
function m.op_Implicit(value) end

YouYou.VarTransform = m
return m
