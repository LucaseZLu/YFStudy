---@class UnityEngine.GraphicsBuffer : System.Object
---@field public count number
---@field public stride number
local m = {}

---@virtual
function m:Dispose() end

function m:Release() end

---@return boolean
function m:IsValid() end

---@overload fun(data:System.ValueType[])
---@overload fun(data:System.ValueType)
---@overload fun(data:System.Array, managedBufferStartIndex:number, graphicsBufferStartIndex:number, count:number)
---@overload fun(data:System.ValueType[], managedBufferStartIndex:number, graphicsBufferStartIndex:number, count:number)
---@overload fun(data:System.ValueType, nativeBufferStartIndex:number, graphicsBufferStartIndex:number, count:number)
---@param data System.Array
function m:SetData(data) end

---@overload fun(data:System.Array, managedBufferStartIndex:number, computeBufferStartIndex:number, count:number)
---@param data System.Array
function m:GetData(data) end

---@return System.IntPtr
function m:GetNativeBufferPtr() end

---@param counterValue number
function m:SetCounterValue(counterValue) end

---@overload fun(src:UnityEngine.GraphicsBuffer, dst:UnityEngine.ComputeBuffer, dstOffsetBytes:number) @static
---@overload fun(src:UnityEngine.ComputeBuffer, dst:UnityEngine.GraphicsBuffer, dstOffsetBytes:number) @static
---@overload fun(src:UnityEngine.GraphicsBuffer, dst:UnityEngine.GraphicsBuffer, dstOffsetBytes:number) @static
---@static
---@param src UnityEngine.ComputeBuffer
---@param dst UnityEngine.ComputeBuffer
---@param dstOffsetBytes number
function m.CopyCount(src, dst, dstOffsetBytes) end

UnityEngine.GraphicsBuffer = m
return m
