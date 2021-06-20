---@class UnityEngine.Rendering.LODParameters : System.ValueType
---@field public isOrthographic boolean
---@field public cameraPosition UnityEngine.Vector3
---@field public fieldOfView number
---@field public orthoSize number
---@field public cameraPixelHeight number
local m = {}

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.LODParameters
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.LODParameters
---@param right UnityEngine.Rendering.LODParameters
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.LODParameters
---@param right UnityEngine.Rendering.LODParameters
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.LODParameters = m
return m
