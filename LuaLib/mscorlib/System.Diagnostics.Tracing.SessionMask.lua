---@class System.Diagnostics.Tracing.SessionMask : System.ValueType
---@field public All System.Diagnostics.Tracing.SessionMask @static
---@field public Item boolean
local m = {}

---@param m System.Diagnostics.Tracing.SessionMask
---@return boolean
function m:IsEqualOrSupersetOf(m) end

---@static
---@param perEventSourceSessionId number
---@return System.Diagnostics.Tracing.SessionMask
function m.FromId(perEventSourceSessionId) end

---@return number
function m:ToEventKeywords() end

---@static
---@param m number
---@return System.Diagnostics.Tracing.SessionMask
function m.FromEventKeywords(m) end

---@static
---@param m1 System.Diagnostics.Tracing.SessionMask
---@param m2 System.Diagnostics.Tracing.SessionMask
---@return System.Diagnostics.Tracing.SessionMask
function m.op_BitwiseOr(m1, m2) end

---@static
---@param m1 System.Diagnostics.Tracing.SessionMask
---@param m2 System.Diagnostics.Tracing.SessionMask
---@return System.Diagnostics.Tracing.SessionMask
function m.op_BitwiseAnd(m1, m2) end

---@static
---@param m1 System.Diagnostics.Tracing.SessionMask
---@param m2 System.Diagnostics.Tracing.SessionMask
---@return System.Diagnostics.Tracing.SessionMask
function m.op_ExclusiveOr(m1, m2) end

---@static
---@param m System.Diagnostics.Tracing.SessionMask
---@return System.Diagnostics.Tracing.SessionMask
function m.op_OnesComplement(m) end

---@overload fun(m:System.Diagnostics.Tracing.SessionMask): @static
---@static
---@param m System.Diagnostics.Tracing.SessionMask
---@return number
function m.op_Explicit(m) end

System.Diagnostics.Tracing.SessionMask = m
return m
