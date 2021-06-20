---@class UnityEngine.Rendering.RenderStateBlock : System.ValueType
---@field public blendState UnityEngine.Rendering.BlendState
---@field public rasterState UnityEngine.Rendering.RasterState
---@field public depthState UnityEngine.Rendering.DepthState
---@field public stencilState UnityEngine.Rendering.StencilState
---@field public stencilReference number
---@field public mask UnityEngine.Rendering.RenderStateMask
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.RenderStateBlock
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.RenderStateBlock
---@param right UnityEngine.Rendering.RenderStateBlock
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.RenderStateBlock
---@param right UnityEngine.Rendering.RenderStateBlock
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.RenderStateBlock = m
return m
