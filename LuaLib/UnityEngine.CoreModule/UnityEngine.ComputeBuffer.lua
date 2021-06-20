---@class UnityEngine.ComputeBuffer : System.Object
---@field public count number
---@field public stride number
---@field public name string
local m = {}

---@virtual
function m:Dispose() end

function m:Release() end

---@return boolean
function m:IsValid() end

---@overload fun(data:System.ValueType[])
---@overload fun(data:System.ValueType)
---@overload fun(data:System.Array, managedBufferStartIndex:number, computeBufferStartIndex:number, count:number)
---@overload fun(data:System.ValueType[], managedBufferStartIndex:number, computeBufferStartIndex:number, count:number)
---@overload fun(data:System.ValueType, nativeBufferStartIndex:number, computeBufferStartIndex:number, count:number)
---@param data System.Array
function m:SetData(data) end

---@overload fun(data:System.Array, managedBufferStartIndex:number, computeBufferStartIndex:number, count:number)
---@param data System.Array
function m:GetData(data) end

---@param computeBufferStartIndex number
---@param count number
---@return System.ValueType
function m:BeginWrite(computeBufferStartIndex, count) end

---@param countWritten number
function m:EndWrite(countWritten) end

---@param counterValue number
function m:SetCounterValue(counterValue) end

---@static
---@param src UnityEngine.ComputeBuffer
---@param dst UnityEngine.ComputeBuffer
---@param dstOffsetBytes number
function m.CopyCount(src, dst, dstOffsetBytes) end

---@return System.IntPtr
function m:GetNativeBufferPtr() end

UnityEngine.ComputeBuffer = m
return m
