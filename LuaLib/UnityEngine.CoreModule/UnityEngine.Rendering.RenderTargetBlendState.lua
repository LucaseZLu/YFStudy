---@class UnityEngine.Rendering.RenderTargetBlendState : System.ValueType
---@field public defaultValue UnityEngine.Rendering.RenderTargetBlendState @static
---@field public writeMask UnityEngine.Rendering.ColorWriteMask
---@field public sourceColorBlendMode UnityEngine.Rendering.BlendMode
---@field public destinationColorBlendMode UnityEngine.Rendering.BlendMode
---@field public sourceAlphaBlendMode UnityEngine.Rendering.BlendMode
---@field public destinationAlphaBlendMode UnityEngine.Rendering.BlendMode
---@field public colorBlendOperation UnityEngine.Rendering.BlendOp
---@field public alphaBlendOperation UnityEngine.Rendering.BlendOp
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.RenderTargetBlendState
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.RenderTargetBlendState
---@param right UnityEngine.Rendering.RenderTargetBlendState
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.RenderTargetBlendState
---@param right UnityEngine.Rendering.RenderTargetBlendState
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.RenderTargetBlendState = m
return m
