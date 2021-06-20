---@class YouYou.BaseAction_14_T1_T2_T3_T4_T5_T6_T7_T8_T9_T10_T11_T12_T13_T14_ : System.MulticastDelegate
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
---@param t11 any
---@param t12 any
---@param t13 any
---@param t14 any
function m:Invoke(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14) end

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
---@param t11 any
---@param t12 any
---@param t13 any
---@param t14 any
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult
function m:BeginInvoke(t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t12, t13, t14, callback, object) end

---@virtual
---@param result System.IAsyncResult
function m:EndInvoke(result) end

YouYou.BaseAction_14_T1_T2_T3_T4_T5_T6_T7_T8_T9_T10_T11_T12_T13_T14_ = m
return m
