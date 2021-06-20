---@class YouYou.LuaManager : YouYou.ManagerBase
---@field public luaEnv XLua.LuaEnv @static
local m = {}

function m:Init() end

---@param str string
function m:DoString(str) end

YouYou.LuaManager = m
return m
