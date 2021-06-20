---@class System.Diagnostics.Tracing.ManifestBuilder : System.Object
---@field public Errors string[]
local m = {}

---@param name string
---@param value number
function m:AddOpcode(name, value) end

---@param name string
---@param value number
function m:AddTask(name, value) end

---@param name string
---@param value number
function m:AddKeyword(name, value) end

---@param eventName string
---@param eventAttribute System.Diagnostics.Tracing.EventAttribute
function m:StartEvent(eventName, eventAttribute) end

---@param type System.Type
---@param name string
function m:AddEventParameter(type, name) end

function m:EndEvent() end

---@return string
function m:CreateManifest() end

---@overload fun(msg:string)
---@param msg string
---@param runtimeCritical boolean
function m:ManifestError(msg, runtimeCritical) end

System.Diagnostics.Tracing.ManifestBuilder = m
return m
