---@class YouYou.VarLong : YouYou.Variable_1_System_Int64_
local m = {}

---@overload fun(value:number): @static
---@static
---@return YouYou.VarLong
function m.Alloc() end

---@static
---@param value YouYou.VarLong
---@return number
function m.op_Implicit(value) end

YouYou.VarLong = m
return m
