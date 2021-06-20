---@class UnityEngine.ApplicationShimBase : System.Object
---@field public isEditor boolean
---@field public platform UnityEngine.RuntimePlatform
---@field public isMobilePlatform boolean
---@field public isConsolePlatform boolean
---@field public systemLanguage UnityEngine.SystemLanguage
---@field public internetReachability UnityEngine.NetworkReachability
local m = {}

---@virtual
function m:Dispose() end

---@return boolean
function m:IsActive() end

function m:OnLowMemory() end

UnityEngine.ApplicationShimBase = m
return m
