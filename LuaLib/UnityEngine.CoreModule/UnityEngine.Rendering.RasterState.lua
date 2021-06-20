---@class UnityEngine.Rendering.RasterState : System.ValueType
---@field public defaultValue UnityEngine.Rendering.RasterState @static
---@field public cullingMode UnityEngine.Rendering.CullMode
---@field public depthClip boolean
---@field public conservative boolean
---@field public offsetUnits number
---@field public offsetFactor number
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.RasterState
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.RasterState
---@param right UnityEngine.Rendering.RasterState
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.RasterState
---@param right UnityEngine.Rendering.RasterState
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.RasterState = m
return m
