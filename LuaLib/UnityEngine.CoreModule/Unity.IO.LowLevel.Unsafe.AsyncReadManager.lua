---@class Unity.IO.LowLevel.Unsafe.AsyncReadManager : System.Object
local m = {}

---@overload fun(filename:string, readCmds:Unity.IO.LowLevel.Unsafe.ReadCommand*, readCmdCount:number, assetName:string, typeID:number): @static
---@overload fun(filename:string, readCmds:Unity.IO.LowLevel.Unsafe.ReadCommand*, readCmdCount:number, assetName:string): @static
---@overload fun(filename:string, readCmds:Unity.IO.LowLevel.Unsafe.ReadCommand*, readCmdCount:number): @static
---@static
---@param filename string
---@param readCmds Unity.IO.LowLevel.Unsafe.ReadCommand*
---@param readCmdCount number
---@param assetName string
---@param typeID number
---@param subsystem Unity.IO.LowLevel.Unsafe.AssetLoadingSubsystem
---@return Unity.IO.LowLevel.Unsafe.ReadHandle
function m.Read(filename, readCmds, readCmdCount, assetName, typeID, subsystem) end

Unity.IO.LowLevel.Unsafe.AsyncReadManager = m
return m
