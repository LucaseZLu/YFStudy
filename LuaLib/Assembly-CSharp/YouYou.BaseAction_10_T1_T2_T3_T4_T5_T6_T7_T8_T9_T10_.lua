---@class YouYou.BaseAction_10_T1_T2_T3_T4_T5_T6_T7_T8_T9_T10_ : System.MulticastDelegate
local m = {}

---@virtual
---@param t1 any
---@param t2 any
---@param t3 any
---@param t4 any
---@param t5 any
---@param t6 any
---@param t7 any
---@param t8 any
---@param t9 any
---@param t10 any
function m:Invoke(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10) end

---@virtual
---@param t1 any
---@param t2 any
---@param t3 any
---@param t4 any
---@param t5 any
---@param t6 any
---@param t7 any
---@param t8 any
---@param t9 any
---@param t10 any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

YouYou.BaseAction_10_T1_T2_T3_T4_T5_T6_T7_T8_T9_T10_ = m
return m
