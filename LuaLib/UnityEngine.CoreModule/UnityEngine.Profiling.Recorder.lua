---@class UnityEngine.Profiling.Recorder : System.Object
---@field public isValid boolean
---@field public enabled boolean
---@field public elapsedNanoseconds number
---@field public gpuElapsedNanoseconds number
---@field public sampleBlockCount number
---@field public gpuSampleBlockCount number
local m = {}

---@static
---@param samplerName string
---@return UnityEngine.Profiling.Recorder
function m.Get(samplerName) end

function m:FilterToCurrentThread() end

function m:CollectFromAllThreads() end

UnityEngine.Profiling.Recorder = m
return m
