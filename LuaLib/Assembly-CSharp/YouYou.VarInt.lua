---@class YouYou.VarInt : YouYou.Variable_1_System_Int32_
local m = {}

---@overload fun(value:number): @static
---@static
---@return YouYou.VarInt
function m.Alloc() end

---@static
---@param value YouYou.VarInt
---@return number
function m.op_Implicit(value) end

YouYou.VarInt = m
return m
