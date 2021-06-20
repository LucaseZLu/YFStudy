---@class UnityEngine.Rendering.RenderQueueRange : System.ValueType
---@field public minimumBound number @static
---@field public maximumBound number @static
---@field public all UnityEngine.Rendering.RenderQueueRange @static
---@field public opaque UnityEngine.Rendering.RenderQueueRange @static
---@field public transparent UnityEngine.Rendering.RenderQueueRange @static
---@field public lowerBound number
---@field public upperBound number
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.RenderQueueRange
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.RenderQueueRange
---@param right UnityEngine.Rendering.RenderQueueRange
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.RenderQueueRange
---@param right UnityEngine.Rendering.RenderQueueRange
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.RenderQueueRange = m
return m
