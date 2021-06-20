---@class UnityEngine.Rendering.DrawingSettings : System.ValueType
---@field public maxShaderPasses number @static
---@field public sortingSettings UnityEngine.Rendering.SortingSettings
---@field public perObjectData UnityEngine.Rendering.PerObjectData
---@field public enableDynamicBatching boolean
---@field public enableInstancing boolean
---@field public overrideMaterial UnityEngine.Material
---@field public overrideMaterialPassIndex number
---@field public mainLightIndex number
local m = {}

---@param index number
---@return UnityEngine.Rendering.ShaderTagId
function m:GetShaderPassName(index) end

---@param index number
---@param shaderPassName UnityEngine.Rendering.ShaderTagId
function m:SetShaderPassName(index, shaderPassName) end

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.DrawingSettings
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.DrawingSettings
---@param right UnityEngine.Rendering.DrawingSettings
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.DrawingSettings
---@param right UnityEngine.Rendering.DrawingSettings
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.DrawingSettings = m
return m
