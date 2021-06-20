---@class System.Diagnostics.Tracing.EventSource.Sha1ForNonSecretPurposes : System.ValueType
local m = {}

function m:Start() end

---@overload fun(input:string)
---@param input number
function m:Append(input) end

---@param output string
function m:Finish(output) end

System.Diagnostics.Tracing.EventSource.Sha1ForNonSecretPurposes = m
return m
