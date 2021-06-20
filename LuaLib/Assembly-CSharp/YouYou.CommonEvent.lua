---@class YouYou.CommonEvent : System.Object
---@field public dic table<number, System.Collections.Generic.LinkedList_1_YouYou_CommonEvent_OnActionHandler_>
local m = {}

---@param key number
---@param handler fun(userData:any)
function m:AddEventListener(key, handler) end

---@param key number
---@param handler fun(userData:any)
function m:RemoveEventListener(key, handler) end

---@overload fun(key:number)
---@param key number
---@param userData any
function m:Dispatch(key, userData) end

---@virtual
function m:Dispose() end

YouYou.CommonEvent = m
return m
