---@class YouYou.VarBytes : YouYou.Variable_1_System_Byte___
local m = {}

---@overload fun(value:string): @static
---@static
---@return YouYou.VarBytes
function m.Alloc() end

---@static
---@param value YouYou.VarBytes
---@return string
function m.op_Implicit(value) end

YouYou.VarBytes = m
return m
