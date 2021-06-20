---@class UnityEngine.Rendering.FilteringSettings : System.ValueType
---@field public defaultValue UnityEngine.Rendering.FilteringSettings @static
---@field public renderQueueRange UnityEngine.Rendering.RenderQueueRange
---@field public layerMask number
---@field public renderingLayerMask number
---@field public excludeMotionVectorObjects boolean
---@field public sortingLayerRange UnityEngine.Rendering.SortingLayerRange
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.FilteringSettings
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.FilteringSettings
---@param right UnityEngine.Rendering.FilteringSettings
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.FilteringSettings
---@param right UnityEngine.Rendering.FilteringSettings
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.FilteringSettings = m
return m
