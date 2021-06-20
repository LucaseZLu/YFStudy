---@class YouYou.SocketTcpRoutine : System.Object
---@field public OnConnectOK fun()
local m = {}

---@param ip string
---@param port number
function m:Connect(ip, port) end

function m:DisConnect() end

---@param buffer string
function m:SendMsg(buffer) end

YouYou.SocketTcpRoutine = m
return m
