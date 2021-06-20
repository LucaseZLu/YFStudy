---@class Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters : System.Object
local m = {}

---@overload fun(_typeID:number)
---@param _typeIDs number[]
function m:SetTypeIDFilter(_typeIDs) end

---@overload fun(_state:Unity.IO.LowLevel.Unsafe.ProcessingState)
---@param _states Unity.IO.LowLevel.Unsafe.ProcessingState[]
function m:SetStateFilter(_states) end

---@overload fun(_readType:Unity.IO.LowLevel.Unsafe.FileReadType)
---@param _readTypes Unity.IO.LowLevel.Unsafe.FileReadType[]
function m:SetReadTypeFilter(_readTypes) end

---@overload fun(_priorityLevel:Unity.IO.LowLevel.Unsafe.Priority)
---@param _priorityLevels Unity.IO.LowLevel.Unsafe.Priority[]
function m:SetPriorityFilter(_priorityLevels) end

---@overload fun(_subsystem:Unity.IO.LowLevel.Unsafe.AssetLoadingSubsystem)
---@param _subsystems Unity.IO.LowLevel.Unsafe.AssetLoadingSubsystem[]
function m:SetSubsystemFilter(_subsystems) end

function m:RemoveTypeIDFilter() end

function m:RemoveStateFilter() end

function m:RemoveReadTypeFilter() end

function m:RemovePriorityFilter() end

function m:RemoveSubsystemFilter() end

function m:ClearFilters() end

Unity.IO.LowLevel.Unsafe.AsyncReadManagerMetricsFilters = m
return m
