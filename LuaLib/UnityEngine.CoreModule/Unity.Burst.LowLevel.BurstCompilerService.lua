---@class Unity.Burst.LowLevel.BurstCompilerService : System.Object
---@field public IsInitialized boolean @static
local m = {}

---@static
---@param m System.Reflection.MethodInfo
---@param compilerOptions string
---@return string
function m.GetDisassembly(m, compilerOptions) end

---@static
---@param delegateMethod any
---@param compilerOptions string
---@return number
function m.CompileAsyncDelegateMethod(delegateMethod, compilerOptions) end

---@static
---@param userID number
---@return System.Void*
function m.GetAsyncCompiledAsyncDelegateMethod(userID) end

---@static
---@param key UnityEngine.Hash128
---@param size_of number
---@param alignment number
---@return System.Void*, UnityEngine.Hash128
function m.GetOrCreateSharedMemory(key, size_of, alignment) end

---@static
---@param method System.Reflection.MethodInfo
---@return string
function m.GetMethodSignature(method) end

---@static
---@param environment number
function m.SetCurrentExecutionMode(environment) end

---@static
---@return number
function m.GetCurrentExecutionMode() end

---@static
---@param userData System.Void*
---@param logType Unity.Burst.LowLevel.BurstCompilerService.BurstLogType
---@param message System.Byte*
---@param filename System.Byte*
---@param lineNumber number
function m.Log(userData, logType, message, filename, lineNumber) end

---@static
---@param fullPathToLibBurstGenerated string
---@return boolean
function m.LoadBurstLibrary(fullPathToLibBurstGenerated) end

---@static
---@param folderRuntime string
---@param extractCompilerFlags fun(jobType:System.Type):(, System.String)
function m.Initialize(folderRuntime, extractCompilerFlags) end

Unity.Burst.LowLevel.BurstCompilerService = m
return m
