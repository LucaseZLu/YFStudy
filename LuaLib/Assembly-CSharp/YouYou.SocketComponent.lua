---@class YouYou.SocketComponent : YouYou.YouYouBaseComponent
---@field public MaxSendCount number
---@field public MaxSendByteCount number
---@field public MaxReceiveCount number
---@field public HeartbeatInterval number
---@field public PingValue number
---@field public GameServerTime number
---@field public CheckServerTime number
---@field public SocketSendMS MMO_MemoryStream
---@field public SocketReceiveMS MMO_MemoryStream
local m = {}

---@return YouYou.SocketTcpRoutine
function m:CreateSocketTcpRoutine() end

---@virtual
function m:Shutdown() end

---@virtual
function m:OnUpdate() end

---@param ip string
---@param port number
function m:ConnectToMainSocket(ip, port) end

---@overload fun(proto:YouYou.IProto)
---@param buffer string
function m:SendMsg(buffer) end

YouYou.SocketComponent = m
return m
