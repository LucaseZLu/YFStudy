---@class UnityEngine.Rendering.ScriptableRenderContext : System.ValueType
local m = {}

---@static
---@param cullingCamera UnityEngine.Camera
function m.EmitWorldGeometryForSceneView(cullingCamera) end

---@static
---@param camera UnityEngine.Camera
function m.EmitGeometryForCamera(camera) end

---@overload fun(width:number, height:number, samples:number, attachments:Unity.Collections.NativeArray_1_UnityEngine_Rendering_AttachmentDescriptor_)
---@param width number
---@param height number
---@param samples number
---@param attachments Unity.Collections.NativeArray_1_UnityEngine_Rendering_AttachmentDescriptor_
---@param depthAttachmentIndex number
function m:BeginRenderPass(width, height, samples, attachments, depthAttachmentIndex) end

---@overload fun(width:number, height:number, samples:number, attachments:Unity.Collections.NativeArray_1_UnityEngine_Rendering_AttachmentDescriptor_):
---@param width number
---@param height number
---@param samples number
---@param attachments Unity.Collections.NativeArray_1_UnityEngine_Rendering_AttachmentDescriptor_
---@param depthAttachmentIndex number
---@return UnityEngine.Rendering.ScopedRenderPass
function m:BeginScopedRenderPass(width, height, samples, attachments, depthAttachmentIndex) end

---@overload fun(colors:Unity.Collections.NativeArray_1_System_Int32_, inputs:Unity.Collections.NativeArray_1_System_Int32_, isDepthStencilReadOnly:boolean)
---@overload fun(colors:Unity.Collections.NativeArray_1_System_Int32_, inputs:Unity.Collections.NativeArray_1_System_Int32_)
---@overload fun(colors:Unity.Collections.NativeArray_1_System_Int32_, isDepthReadOnly:boolean, isStencilReadOnly:boolean)
---@overload fun(colors:Unity.Collections.NativeArray_1_System_Int32_, isDepthStencilReadOnly:boolean)
---@overload fun(colors:Unity.Collections.NativeArray_1_System_Int32_)
---@param colors Unity.Collections.NativeArray_1_System_Int32_
---@param inputs Unity.Collections.NativeArray_1_System_Int32_
---@param isDepthReadOnly boolean
---@param isStencilReadOnly boolean
function m:BeginSubPass(colors, inputs, isDepthReadOnly, isStencilReadOnly) end

---@overload fun(colors:Unity.Collections.NativeArray_1_System_Int32_, inputs:Unity.Collections.NativeArray_1_System_Int32_, isDepthStencilReadOnly:boolean):
---@overload fun(colors:Unity.Collections.NativeArray_1_System_Int32_, inputs:Unity.Collections.NativeArray_1_System_Int32_):
---@overload fun(colors:Unity.Collections.NativeArray_1_System_Int32_, isDepthReadOnly:boolean, isStencilReadOnly:boolean):
---@overload fun(colors:Unity.Collections.NativeArray_1_System_Int32_, isDepthStencilReadOnly:boolean):
---@overload fun(colors:Unity.Collections.NativeArray_1_System_Int32_):
---@param colors Unity.Collections.NativeArray_1_System_Int32_
---@param inputs Unity.Collections.NativeArray_1_System_Int32_
---@param isDepthReadOnly boolean
---@param isStencilReadOnly boolean
---@return UnityEngine.Rendering.ScopedSubPass
function m:BeginScopedSubPass(colors, inputs, isDepthReadOnly, isStencilReadOnly) end

function m:EndSubPass() end

function m:EndRenderPass() end

function m:Submit() end

---@overload fun(cullingResults:UnityEngine.Rendering.CullingResults, drawingSettings:UnityEngine.Rendering.DrawingSettings, filteringSettings:UnityEngine.Rendering.FilteringSettings, stateBlock:UnityEngine.Rendering.RenderStateBlock):(, UnityEngine.Rendering.FilteringSettings, UnityEngine.Rendering.RenderStateBlock)
---@overload fun(cullingResults:UnityEngine.Rendering.CullingResults, drawingSettings:UnityEngine.Rendering.DrawingSettings, filteringSettings:UnityEngine.Rendering.FilteringSettings, renderTypes:Unity.Collections.NativeArray_1_UnityEngine_Rendering_ShaderTagId_, stateBlocks:Unity.Collections.NativeArray_1_UnityEngine_Rendering_RenderStateBlock_):(, UnityEngine.Rendering.FilteringSettings)
---@overload fun(cullingResults:UnityEngine.Rendering.CullingResults, drawingSettings:UnityEngine.Rendering.DrawingSettings, filteringSettings:UnityEngine.Rendering.FilteringSettings, tagName:UnityEngine.Rendering.ShaderTagId, isPassTagName:boolean, tagValues:Unity.Collections.NativeArray_1_UnityEngine_Rendering_ShaderTagId_, stateBlocks:Unity.Collections.NativeArray_1_UnityEngine_Rendering_RenderStateBlock_):(, UnityEngine.Rendering.FilteringSettings)
---@param cullingResults UnityEngine.Rendering.CullingResults
---@param drawingSettings UnityEngine.Rendering.DrawingSettings
---@param filteringSettings UnityEngine.Rendering.FilteringSettings
---@return UnityEngine.Rendering.DrawingSettings, UnityEngine.Rendering.FilteringSettings
function m:DrawRenderers(cullingResults, drawingSettings, filteringSettings) end

---@param settings UnityEngine.Rendering.ShadowDrawingSettings
---@return UnityEngine.Rendering.ShadowDrawingSettings
function m:DrawShadows(settings) end

---@param commandBuffer UnityEngine.Rendering.CommandBuffer
function m:ExecuteCommandBuffer(commandBuffer) end

---@param commandBuffer UnityEngine.Rendering.CommandBuffer
---@param queueType UnityEngine.Rendering.ComputeQueueType
function m:ExecuteCommandBufferAsync(commandBuffer, queueType) end

---@overload fun(camera:UnityEngine.Camera)
---@overload fun(camera:UnityEngine.Camera, stereoSetup:boolean, eye:number)
---@param camera UnityEngine.Camera
---@param stereoSetup boolean
function m:SetupCameraProperties(camera, stereoSetup) end

---@overload fun(camera:UnityEngine.Camera, eye:number)
---@overload fun(camera:UnityEngine.Camera, eye:number, isFinalPass:boolean)
---@param camera UnityEngine.Camera
function m:StereoEndRender(camera) end

---@overload fun(camera:UnityEngine.Camera, eye:number)
---@param camera UnityEngine.Camera
function m:StartMultiEye(camera) end

---@param camera UnityEngine.Camera
function m:StopMultiEye(camera) end

---@param camera UnityEngine.Camera
function m:DrawSkybox(camera) end

function m:InvokeOnRenderObjectCallback() end

---@param camera UnityEngine.Camera
---@param gizmoSubset UnityEngine.Rendering.GizmoSubset
function m:DrawGizmos(camera, gizmoSubset) end

---@param camera UnityEngine.Camera
function m:DrawWireOverlay(camera) end

---@param camera UnityEngine.Camera
function m:DrawUIOverlay(camera) end

---@param parameters UnityEngine.Rendering.ScriptableCullingParameters
---@return UnityEngine.Rendering.CullingResults, UnityEngine.Rendering.ScriptableCullingParameters
function m:Cull(parameters) end

---@overload fun(obj:any): @virtual
---@virtual
---@param other UnityEngine.Rendering.ScriptableRenderContext
---@return boolean
function m:Equals(other) end

---@virtual
---@return number
function m:GetHashCode() end

---@static
---@param left UnityEngine.Rendering.ScriptableRenderContext
---@param right UnityEngine.Rendering.ScriptableRenderContext
---@return boolean
function m.op_Equality(left, right) end

---@static
---@param left UnityEngine.Rendering.ScriptableRenderContext
---@param right UnityEngine.Rendering.ScriptableRenderContext
---@return boolean
function m.op_Inequality(left, right) end

UnityEngine.Rendering.ScriptableRenderContext = m
return m
