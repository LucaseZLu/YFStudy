---@class YouYou.VarBool : YouYou.Variable_1_System_Boolean_
local m = {}

---@overload fun(value:boolean): @static
---@static
---@return YouYou.VarBool
function m.Alloc() end

---@static
---@param value YouYou.VarBool
---@return boolean
function m.op_Implicit(value) end

YouYou.VarBool = m
return m
