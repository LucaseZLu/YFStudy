---@class UnityEngine.Scripting.APIUpdating.MovedFromAttributeData : System.ValueType
---@field public className string
---@field public nameSpace string
---@field public assembly string
---@field public classHasChanged boolean
---@field public nameSpaceHasChanged boolean
---@field public assemblyHasChanged boolean
---@field public autoUdpateAPI boolean
local m = {}

---@overload fun(autoUpdateAPI:boolean, sourceNamespace:string, sourceAssembly:string)
---@overload fun(autoUpdateAPI:boolean, sourceNamespace:string)
---@overload fun(autoUpdateAPI:boolean)
---@param autoUpdateAPI boolean
---@param sourceNamespace string
---@param sourceAssembly string
---@param sourceClassName string
function m:Set(autoUpdateAPI, sourceNamespace, sourceAssembly, sourceClassName) end

UnityEngine.Scripting.APIUpdating.MovedFromAttributeData = m
return m
