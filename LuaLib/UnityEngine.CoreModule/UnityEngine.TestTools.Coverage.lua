---@class UnityEngine.TestTools.Coverage : System.Object
---@field public enabled boolean @static
local m = {}

---@static
---@param method System.Reflection.MethodBase
---@return UnityEngine.TestTools.CoveredSequencePoint[]
function m.GetSequencePointsFor(method) end

---@overload fun(methods:System.Reflection.MethodBase[]): @static
---@overload fun(type:System.Type): @static
---@static
---@param method System.Reflection.MethodBase
---@return UnityEngine.TestTools.CoveredMethodStats
function m.GetStatsFor(method) end

---@static
---@return UnityEngine.TestTools.CoveredMethodStats[]
function m.GetStatsForAllCoveredMethods() end

---@static
---@param method System.Reflection.MethodBase
function m.ResetFor(method) end

---@static
function m.ResetAll() end

UnityEngine.TestTools.Coverage = m
return m
