---@class UnityEngine.Rendering.SortingLayerRange : System.ValueType
---@field public all UnityEngine.Rendering.SortingLayerRange @static
---@field public lowerBound number
---@field public upperBound number
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.SortingLayerRange
---@return boolean
function m:Equals(other) end

---@static
---@param lhs UnityEngine.Rendering.SortingLayerRange
---@param rhs UnityEngine.Rendering.SortingLayerRange
---@return boolean
function m.op_Inequality(lhs, rhs) end

---@static
---@param lhs UnityEngine.Rendering.SortingLayerRange
---@param rhs UnityEngine.Rendering.SortingLayerRange
---@return boolean
function m.op_Equality(lhs, rhs) end

---@virtual
---@return number
function m:GetHashCode() end

UnityEngine.Rendering.SortingLayerRange = m
return m
