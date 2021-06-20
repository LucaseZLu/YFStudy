---@class Unity.Baselib.ErrorState : System.ValueType
---@field public ErrorCode Unity.Baselib.LowLevel.Binding.Baselib_ErrorCode
---@field public NativeErrorStatePtr Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
local m = {}

function m:ThrowIfFailed() end

---@overload fun():
---@param verbosity Unity.Baselib.LowLevel.Binding.Baselib_ErrorState_ExplainVerbosity
---@return string
function m:Explain(verbosity) end

Unity.Baselib.ErrorState = m
return m
