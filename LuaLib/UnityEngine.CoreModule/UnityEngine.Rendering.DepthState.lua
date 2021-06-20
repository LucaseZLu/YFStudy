---@class UnityEngine.Rendering.DepthState : System.ValueType
---@field public defaultValue UnityEngine.Rendering.DepthState @static
---@field public writeEnabled boolean
---@field public compareFunction UnityEngine.Rendering.CompareFunction
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.DepthState
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.DepthState
---@param right UnityEngine.Rendering.DepthState
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.DepthState
---@param right UnityEngine.Rendering.DepthState
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.DepthState = m
return m
