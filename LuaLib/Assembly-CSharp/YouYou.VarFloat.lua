---@class YouYou.VarFloat : YouYou.Variable_1_System_Single_
local m = {}

---@overload fun(value:number): @static
---@static
---@return YouYou.VarFloat
function m.Alloc() end

---@static
---@param value YouYou.VarFloat
---@return number
function m.op_Implicit(value) end

YouYou.VarFloat = m
return m
