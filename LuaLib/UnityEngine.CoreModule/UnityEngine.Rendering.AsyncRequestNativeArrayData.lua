---@class UnityEngine.Rendering.AsyncRequestNativeArrayData : System.ValueType
---@field public nativeArrayBuffer System.Void*
---@field public lengthInBytes number
---@field public safetyHandle Unity.Collections.LowLevel.Unsafe.AtomicSafetyHandle
local m = {}

---@overload fun(array:System.ValueType): @static
---@static
---@param array System.ValueType
---@return UnityEngine.Rendering.AsyncRequestNativeArrayData
function m.CreateAndCheckAccess(array) end

UnityEngine.Rendering.AsyncRequestNativeArrayData = m
return m
