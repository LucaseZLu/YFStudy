---@class YouYou.VarByte : YouYou.Variable_1_System_Byte_
local m = {}

---@overload fun(value:number): @static
---@static
---@return YouYou.VarByte
function m.Alloc() end

---@static
---@param value YouYou.VarByte
---@return number
function m.op_Implicit(value) end

YouYou.VarByte = m
return m
