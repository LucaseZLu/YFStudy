---@class UnityEngine.Rendering.CommandBufferExtensions : System.Object
local m = {}

---@static
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param rid UnityEngine.Rendering.RenderTargetIdentifier
---@param fastMemoryFlags UnityEngine.Rendering.FastMemoryFlags
---@param residency number
---@param copyContents boolean
function m.SwitchIntoFastMemory(cmd, rid, fastMemoryFlags, residency, copyContents) end

---@static
---@param cmd UnityEngine.Rendering.CommandBuffer
---@param rid UnityEngine.Rendering.RenderTargetIdentifier
---@param copyContents boolean
function m.SwitchOutOfFastMemory(cmd, rid, copyContents) end

UnityEngine.Rendering.CommandBufferExtensions = m
return m
