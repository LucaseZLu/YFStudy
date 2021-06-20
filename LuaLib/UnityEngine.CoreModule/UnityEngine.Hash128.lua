---@class UnityEngine.Hash128 : System.ValueType
---@field public isValid boolean
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param rhs UnityEngine.Hash128
---@return number
function m:CompareTo(rhs) end

---@virtual
---@return string
function m:ToString() end

---@static
---@param hashString string
---@return UnityEngine.Hash128
function m.Parse(hashString) end

---@overload fun(data:System.ValueType): @static
---@overload fun(data:System.ValueType, start:number, count:number): @static
---@overload fun(data:System.ValueType[]): @static
---@overload fun(data:System.ValueType[], start:number, count:number): @static
---@overload fun(data:System.ValueType[]): @static
---@overload fun(data:System.ValueType[], start:number, count:number): @static
---@overload fun(val:any):(, any) @static
---@overload fun(val:number): @static
---@overload fun(val:number): @static
---@overload fun(data:System.Void*, size:number): @static
---@static
---@param data string
---@return UnityEngine.Hash128
function m.Compute(data) end

---@overload fun(data:System.ValueType)
---@overload fun(data:System.ValueType, start:number, count:number)
---@overload fun(data:System.ValueType[])
---@overload fun(data:System.ValueType[], start:number, count:number)
---@overload fun(data:System.ValueType[])
---@overload fun(data:System.ValueType[], start:number, count:number)
---@overload fun(val:any):
---@overload fun(val:number)
---@overload fun(val:number)
---@overload fun(data:System.Void*, size:number)
---@param data string
function m:Append(data) end

---@overload fun(obj:UnityEngine.Hash128): @virtual
---@virtual
---@param obj any
---@return boolean
function m:Equals(obj) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param hash1 UnityEngine.Hash128
---@param hash2 UnityEngine.Hash128
---@return boolean
function m.op_Equality(hash1, hash2) end

---@static
---@param hash1 UnityEngine.Hash128
---@param hash2 UnityEngine.Hash128
---@return boolean
function m.op_Inequality(hash1, hash2) end

---@static
---@param x UnityEngine.Hash128
---@param y UnityEngine.Hash128
---@return boolean
function m.op_LessThan(x, y) end

---@static
---@param x UnityEngine.Hash128
---@param y UnityEngine.Hash128
---@return boolean
function m.op_GreaterThan(x, y) end

UnityEngine.Hash128 = m
return m
