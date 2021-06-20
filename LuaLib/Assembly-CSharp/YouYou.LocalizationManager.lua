---@class YouYou.LocalizationManager : YouYou.ManagerBase
local m = {}

---@overload fun(key:string):
---@param key string
---@param ... any|any[]
---@return string
function m:GetString(key, ...) end

YouYou.LocalizationManager = m
return m
