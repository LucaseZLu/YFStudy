---@class UnityEngine.Rendering.AttachmentDescriptor : System.ValueType
---@field public loadAction UnityEngine.Rendering.RenderBufferLoadAction
---@field public storeAction UnityEngine.Rendering.RenderBufferStoreAction
---@field public graphicsFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field public format UnityEngine.RenderTextureFormat
---@field public loadStoreTarget UnityEngine.Rendering.RenderTargetIdentifier
---@field public resolveTarget UnityEngine.Rendering.RenderTargetIdentifier
---@field public clearColor UnityEngine.Color
---@field public clearDepth number
---@field public clearStencil number
local m = {}

---@param target UnityEngine.Rendering.RenderTargetIdentifier
---@param loadExistingContents boolean
---@param storeResults boolean
function m:ConfigureTarget(target, loadExistingContents, storeResults) end

---@param target UnityEngine.Rendering.RenderTargetIdentifier
function m:ConfigureResolveTarget(target) end

---@overload fun(clearColor:UnityEngine.Color, clearDepth:number)
---@overload fun(clearColor:UnityEngine.Color)
---@param clearColor UnityEngine.Color
---@param clearDepth number
---@param clearStencil number
function m:ConfigureClear(clearColor, clearDepth, clearStencil) end

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.AttachmentDescriptor
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.AttachmentDescriptor
---@param right UnityEngine.Rendering.AttachmentDescriptor
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.AttachmentDescriptor
---@param right UnityEngine.Rendering.AttachmentDescriptor
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.AttachmentDescriptor = m
return m
