---@class UnityEngine.Rendering.BlendState : System.ValueType
---@field public defaultValue UnityEngine.Rendering.BlendState @static
---@field public separateMRTBlendStates boolean
---@field public alphaToMask boolean
---@field public blendState0 UnityEngine.Rendering.RenderTargetBlendState
---@field public blendState1 UnityEngine.Rendering.RenderTargetBlendState
---@field public blendState2 UnityEngine.Rendering.RenderTargetBlendState
---@field public blendState3 UnityEngine.Rendering.RenderTargetBlendState
---@field public blendState4 UnityEngine.Rendering.RenderTargetBlendState
---@field public blendState5 UnityEngine.Rendering.RenderTargetBlendState
---@field public blendState6 UnityEngine.Rendering.RenderTargetBlendState
---@field public blendState7 UnityEngine.Rendering.RenderTargetBlendState
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.BlendState
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.BlendState
---@param right UnityEngine.Rendering.BlendState
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.BlendState
---@param right UnityEngine.Rendering.BlendState
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.BlendState = m
return m
