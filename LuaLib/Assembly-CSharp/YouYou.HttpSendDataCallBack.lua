---@class YouYou.HttpSendDataCallBack : System.MulticastDelegate
local m = {}

---@virtual
---@param args YouYou.HttpCallBackArgs
function m:Invoke(args) end

---@virtual
---@param args YouYou.HttpCallBackArgs
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(args, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

YouYou.HttpSendDataCallBack = m
return m
