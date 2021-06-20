---@class YouYou.VarString : YouYou.Variable_1_System_String_
local m = {}

---@overload fun(value:string): @static
---@static
---@return YouYou.VarString
function m.Alloc() end

---@static
---@param value YouYou.VarString
---@return string
function m.op_Implicit(value) end

YouYou.VarString = m
return m
