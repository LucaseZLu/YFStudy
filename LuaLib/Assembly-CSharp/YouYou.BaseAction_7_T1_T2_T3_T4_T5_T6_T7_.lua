---@class YouYou.BaseAction_7_T1_T2_T3_T4_T5_T6_T7_ : System.MulticastDelegate
local m = {}

---@virtual
---@param t1 any
---@param t2 any
---@param t3 any
---@param t4 any
---@param t5 any
---@param t6 any
---@param t7 any
function m:Invoke(t1, t2, t3, t4, t5, t6, t7) end

---@virtual
---@param t1 any
---@param t2 any
---@param t3 any
---@param t4 any
---@param t5 any
---@param t6 any
---@param t7 any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(t1, t2, t3, t4, t5, t6, t7, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

YouYou.BaseAction_7_T1_T2_T3_T4_T5_T6_T7_ = m
return m
