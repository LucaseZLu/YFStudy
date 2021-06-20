---@class UnityEngine.Rendering.AsyncGPUReadback : System.Object
local m = {}

---@static
function m.WaitAllRequests() end

---@overload fun(src:UnityEngine.ComputeBuffer): @static
---@overload fun(src:UnityEngine.ComputeBuffer, size:number, offset:number, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)): @static
---@overload fun(src:UnityEngine.ComputeBuffer, size:number, offset:number): @static
---@overload fun(src:UnityEngine.GraphicsBuffer, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)): @static
---@overload fun(src:UnityEngine.GraphicsBuffer): @static
---@overload fun(src:UnityEngine.GraphicsBuffer, size:number, offset:number, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)): @static
---@overload fun(src:UnityEngine.GraphicsBuffer, size:number, offset:number): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number): @static
---@overload fun(src:UnityEngine.Texture): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, dstFormat:UnityEngine.TextureFormat, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, dstFormat:UnityEngine.TextureFormat): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, dstFormat:UnityEngine.Experimental.Rendering.GraphicsFormat, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, dstFormat:UnityEngine.Experimental.Rendering.GraphicsFormat): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, dstFormat:UnityEngine.TextureFormat, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, dstFormat:UnityEngine.TextureFormat): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, dstFormat:UnityEngine.Experimental.Rendering.GraphicsFormat, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)): @static
---@overload fun(src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, dstFormat:UnityEngine.Experimental.Rendering.GraphicsFormat): @static
---@static
---@param src UnityEngine.ComputeBuffer
---@param callback fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)
---@return UnityEngine.Rendering.AsyncGPUReadbackRequest
function m.Request(src, callback) end

---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.ComputeBuffer):(, Unity.Collections.NativeArray_1_T_) @static
---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.ComputeBuffer, size:number, offset:number, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)):(, Unity.Collections.NativeArray_1_T_) @static
---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.ComputeBuffer, size:number, offset:number):(, Unity.Collections.NativeArray_1_T_) @static
---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.GraphicsBuffer, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)):(, Unity.Collections.NativeArray_1_T_) @static
---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.GraphicsBuffer):(, Unity.Collections.NativeArray_1_T_) @static
---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.GraphicsBuffer, size:number, offset:number, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)):(, Unity.Collections.NativeArray_1_T_) @static
---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.GraphicsBuffer, size:number, offset:number):(, Unity.Collections.NativeArray_1_T_) @static
---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.Texture, mipIndex:number, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)):(, Unity.Collections.NativeArray_1_T_) @static
---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.Texture, mipIndex:number):(, Unity.Collections.NativeArray_1_T_) @static
---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.Texture):(, Unity.Collections.NativeArray_1_T_) @static
---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.Texture, mipIndex:number, dstFormat:UnityEngine.TextureFormat, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)):(, Unity.Collections.NativeArray_1_T_) @static
---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.Texture, mipIndex:number, dstFormat:UnityEngine.TextureFormat):(, Unity.Collections.NativeArray_1_T_) @static
---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.Texture, mipIndex:number, dstFormat:UnityEngine.Experimental.Rendering.GraphicsFormat, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)):(, Unity.Collections.NativeArray_1_T_) @static
---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.Texture, mipIndex:number, dstFormat:UnityEngine.Experimental.Rendering.GraphicsFormat):(, Unity.Collections.NativeArray_1_T_) @static
---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, dstFormat:UnityEngine.TextureFormat, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)):(, Unity.Collections.NativeArray_1_T_) @static
---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, dstFormat:UnityEngine.TextureFormat):(, Unity.Collections.NativeArray_1_T_) @static
---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, dstFormat:UnityEngine.Experimental.Rendering.GraphicsFormat, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)):(, Unity.Collections.NativeArray_1_T_) @static
---@overload fun(output:Unity.Collections.NativeArray_1_T_, src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, dstFormat:UnityEngine.Experimental.Rendering.GraphicsFormat):(, Unity.Collections.NativeArray_1_T_) @static
---@static
---@param output Unity.Collections.NativeArray_1_T_
---@param src UnityEngine.ComputeBuffer
---@param callback fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)
---@return UnityEngine.Rendering.AsyncGPUReadbackRequest, Unity.Collections.NativeArray_1_T_
function m.RequestIntoNativeArray(output, src, callback) end

---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.ComputeBuffer):(, Unity.Collections.NativeSlice_1_T_) @static
---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.ComputeBuffer, size:number, offset:number, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)):(, Unity.Collections.NativeSlice_1_T_) @static
---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.ComputeBuffer, size:number, offset:number):(, Unity.Collections.NativeSlice_1_T_) @static
---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.GraphicsBuffer, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)):(, Unity.Collections.NativeSlice_1_T_) @static
---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.GraphicsBuffer):(, Unity.Collections.NativeSlice_1_T_) @static
---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.GraphicsBuffer, size:number, offset:number, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)):(, Unity.Collections.NativeSlice_1_T_) @static
---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.GraphicsBuffer, size:number, offset:number):(, Unity.Collections.NativeSlice_1_T_) @static
---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.Texture, mipIndex:number, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)):(, Unity.Collections.NativeSlice_1_T_) @static
---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.Texture, mipIndex:number):(, Unity.Collections.NativeSlice_1_T_) @static
---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.Texture):(, Unity.Collections.NativeSlice_1_T_) @static
---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.Texture, mipIndex:number, dstFormat:UnityEngine.TextureFormat, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)):(, Unity.Collections.NativeSlice_1_T_) @static
---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.Texture, mipIndex:number, dstFormat:UnityEngine.TextureFormat):(, Unity.Collections.NativeSlice_1_T_) @static
---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.Texture, mipIndex:number, dstFormat:UnityEngine.Experimental.Rendering.GraphicsFormat, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)):(, Unity.Collections.NativeSlice_1_T_) @static
---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.Texture, mipIndex:number, dstFormat:UnityEngine.Experimental.Rendering.GraphicsFormat):(, Unity.Collections.NativeSlice_1_T_) @static
---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, dstFormat:UnityEngine.TextureFormat, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)):(, Unity.Collections.NativeSlice_1_T_) @static
---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, dstFormat:UnityEngine.TextureFormat):(, Unity.Collections.NativeSlice_1_T_) @static
---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, dstFormat:UnityEngine.Experimental.Rendering.GraphicsFormat, callback:fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)):(, Unity.Collections.NativeSlice_1_T_) @static
---@overload fun(output:Unity.Collections.NativeSlice_1_T_, src:UnityEngine.Texture, mipIndex:number, x:number, width:number, y:number, height:number, z:number, depth:number, dstFormat:UnityEngine.Experimental.Rendering.GraphicsFormat):(, Unity.Collections.NativeSlice_1_T_) @static
---@static
---@param output Unity.Collections.NativeSlice_1_T_
---@param src UnityEngine.ComputeBuffer
---@param callback fun(obj:UnityEngine.Rendering.AsyncGPUReadbackRequest)
---@return UnityEngine.Rendering.AsyncGPUReadbackRequest, Unity.Collections.NativeSlice_1_T_
function m.RequestIntoNativeSlice(output, src, callback) end

UnityEngine.Rendering.AsyncGPUReadback = m
return m
