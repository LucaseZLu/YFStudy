---@class UnityEngine.Rendering.RenderPipelineManager : System.Object
---@field public currentPipeline UnityEngine.Rendering.RenderPipeline @static
local m = {}

---@static
---@param value fun(arg1:UnityEngine.Rendering.ScriptableRenderContext, arg2:UnityEngine.Camera[])
function m.add_beginFrameRendering(value) end

---@static
---@param value fun(arg1:UnityEngine.Rendering.ScriptableRenderContext, arg2:UnityEngine.Camera[])
function m.remove_beginFrameRendering(value) end

---@static
---@param value fun(arg1:UnityEngine.Rendering.ScriptableRenderContext, arg2:UnityEngine.Camera)
function m.add_beginCameraRendering(value) end

---@static
---@param value fun(arg1:UnityEngine.Rendering.ScriptableRenderContext, arg2:UnityEngine.Camera)
function m.remove_beginCameraRendering(value) end

---@static
---@param value fun(arg1:UnityEngine.Rendering.ScriptableRenderContext, arg2:UnityEngine.Camera[])
function m.add_endFrameRendering(value) end

---@static
---@param value fun(arg1:UnityEngine.Rendering.ScriptableRenderContext, arg2:UnityEngine.Camera[])
function m.remove_endFrameRendering(value) end

---@static
---@param value fun(arg1:UnityEngine.Rendering.ScriptableRenderContext, arg2:UnityEngine.Camera)
function m.add_endCameraRendering(value) end

---@static
---@param value fun(arg1:UnityEngine.Rendering.ScriptableRenderContext, arg2:UnityEngine.Camera)
function m.remove_endCameraRendering(value) end

UnityEngine.Rendering.RenderPipelineManager = m
return m
