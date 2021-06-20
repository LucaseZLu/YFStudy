---@class UnityEngine.LazyLoadReference_1_T_ : System.ValueType
---@field public isSet boolean
---@field public isBroken boolean
---@field public asset UnityEngine.Object
---@field public instanceID number
local m = {}

---@overload fun(instanceID:number): @static
---@static
---@param asset UnityEngine.Object
---@return UnityEngine.LazyLoadReference_1_T_
function m.op_Implicit(asset) end

UnityEngine.LazyLoadReference_1_T_ = m
return m
