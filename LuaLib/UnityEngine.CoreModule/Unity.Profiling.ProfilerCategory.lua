---@class Unity.Profiling.ProfilerCategory : System.ValueType
---@field public Render Unity.Profiling.ProfilerCategory @static
---@field public Scripts Unity.Profiling.ProfilerCategory @static
---@field public Gui Unity.Profiling.ProfilerCategory @static
---@field public Physics Unity.Profiling.ProfilerCategory @static
---@field public Animation Unity.Profiling.ProfilerCategory @static
---@field public Ai Unity.Profiling.ProfilerCategory @static
---@field public Audio Unity.Profiling.ProfilerCategory @static
---@field public Video Unity.Profiling.ProfilerCategory @static
---@field public Particles Unity.Profiling.ProfilerCategory @static
---@field public Lighting Unity.Profiling.ProfilerCategory @static
---@field public Network Unity.Profiling.ProfilerCategory @static
---@field public Loading Unity.Profiling.ProfilerCategory @static
---@field public Vr Unity.Profiling.ProfilerCategory @static
---@field public Input Unity.Profiling.ProfilerCategory @static
---@field public Memory Unity.Profiling.ProfilerCategory @static
---@field public VirtualTexturing Unity.Profiling.ProfilerCategory @static
---@field public Internal Unity.Profiling.ProfilerCategory @static
---@field public Name string
---@field public Color UnityEngine.Color32
local m = {}

---@virtual
---@return string
function m:ToString() end

---@static
---@param category Unity.Profiling.ProfilerCategory
---@return number
function m.op_Implicit(category) end

Unity.Profiling.ProfilerCategory = m
return m
