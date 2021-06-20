---@class UnityEngine.Rendering.BatchRendererGroup.OnPerformCulling : System.MulticastDelegate
local m = {}

---@virtual
---@param rendererGroup UnityEngine.Rendering.BatchRendererGroup
---@param cullingContext UnityEngine.Rendering.BatchCullingContext
---@return Unity.Jobs.JobHandle
function m:Invoke(rendererGroup, cullingContext) end

---@virtual
---@param rendererGroup UnityEngine.Rendering.BatchRendererGroup
---@param cullingContext UnityEngine.Rendering.BatchCullingContext
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(rendererGroup, cullingContext, callback, object) end

---@virtual
---@param result System.IAsyncResult
---@return Unity.Jobs.JobHandle
function m:EndInvoke(result) end

UnityEngine.Rendering.BatchRendererGroup.OnPerformCulling = m
return m
