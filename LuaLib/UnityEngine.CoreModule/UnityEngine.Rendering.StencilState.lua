---@class UnityEngine.Rendering.StencilState : System.ValueType
---@field public defaultValue UnityEngine.Rendering.StencilState @static
---@field public enabled boolean
---@field public readMask number
---@field public writeMask number
---@field public compareFunctionFront UnityEngine.Rendering.CompareFunction
---@field public passOperationFront UnityEngine.Rendering.StencilOp
---@field public failOperationFront UnityEngine.Rendering.StencilOp
---@field public zFailOperationFront UnityEngine.Rendering.StencilOp
---@field public compareFunctionBack UnityEngine.Rendering.CompareFunction
---@field public passOperationBack UnityEngine.Rendering.StencilOp
---@field public failOperationBack UnityEngine.Rendering.StencilOp
---@field public zFailOperationBack UnityEngine.Rendering.StencilOp
local m = {}

---@param value UnityEngine.Rendering.CompareFunction
function m:SetCompareFunction(value) end

---@param value UnityEngine.Rendering.StencilOp
function m:SetPassOperation(value) end

---@param value UnityEngine.Rendering.StencilOp
function m:SetFailOperation(value) end

---@param value UnityEngine.Rendering.StencilOp
function m:SetZFailOperation(value) end

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.StencilState
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.StencilState
---@param right UnityEngine.Rendering.StencilState
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.StencilState
---@param right UnityEngine.Rendering.StencilState
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.StencilState = m
return m
