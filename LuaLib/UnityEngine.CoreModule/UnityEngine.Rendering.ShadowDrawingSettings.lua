---@class UnityEngine.Rendering.ShadowDrawingSettings : System.ValueType
---@field public cullingResults UnityEngine.Rendering.CullingResults
---@field public lightIndex number
---@field public useRenderingLayerMaskTest boolean
---@field public splitData UnityEngine.Rendering.ShadowSplitData
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.ShadowDrawingSettings
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.ShadowDrawingSettings
---@param right UnityEngine.Rendering.ShadowDrawingSettings
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.ShadowDrawingSettings
---@param right UnityEngine.Rendering.ShadowDrawingSettings
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.ShadowDrawingSettings = m
return m
