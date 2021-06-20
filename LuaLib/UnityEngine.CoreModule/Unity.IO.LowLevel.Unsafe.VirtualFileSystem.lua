---@class Unity.IO.LowLevel.Unsafe.VirtualFileSystem : System.Object
local m = {}

---@static
---@param vfsFileName string
---@return boolean, System.String, System.UInt64, System.UInt64
function m.GetLocalFileSystemName(vfsFileName) end

Unity.IO.LowLevel.Unsafe.VirtualFileSystem = m
return m
