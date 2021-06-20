---@class YouYou.LocalizationComponent : YouYou.YouYouBaseComponent
---@field public CurrLanguage YouYou.YouYouLanguage
local m = {}

---@overload fun(key:string):
---@param key string
---@param ... any|any[]
---@return string
function m:GetString(key, ...) end

---@virtual
function m:Shutdown() end

YouYou.LocalizationComponent = m
return m
