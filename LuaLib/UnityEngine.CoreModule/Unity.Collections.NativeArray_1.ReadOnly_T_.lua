---@class Unity.Collections.NativeArray_1.ReadOnly_T_ : System.ValueType
---@field public Length number
---@field public Item System.ValueType
local m = {}

---@overload fun(array:System.ValueType)
---@param array System.ValueType[]
function m:CopyTo(array) end

---@return System.ValueType[]
function m:ToArray() end

---@return System.ValueType
function m:Reinterpret() end

Unity.Collections.NativeArray_1.ReadOnly_T_ = m
return m
