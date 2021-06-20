---@class System.Diagnostics.Tracing.TraceLoggingDataCollector : System.Object
local m = {}

---@return number
function m:BeginBufferedArray() end

---@param bookmark number
---@param count number
function m:EndBufferedArray(bookmark, count) end

---@return System.Diagnostics.Tracing.TraceLoggingDataCollector
function m:AddGroup() end

---@overload fun(value:number)
---@overload fun(value:number)
---@overload fun(value:number)
---@overload fun(value:number)
---@overload fun(value:number)
---@overload fun(value:number)
---@overload fun(value:number)
---@overload fun(value:number)
---@overload fun(value:System.IntPtr)
---@overload fun(value:System.UIntPtr)
---@overload fun(value:number)
---@overload fun(value:number)
---@overload fun(value:number)
---@overload fun(value:System.Guid)
---@param value boolean
function m:AddScalar(value) end

---@overload fun(value:string)
---@param value string
function m:AddBinary(value) end

---@overload fun(value:number[])
---@overload fun(value:number[])
---@overload fun(value:number[])
---@overload fun(value:number[])
---@overload fun(value:number[])
---@overload fun(value:number[])
---@overload fun(value:number[])
---@overload fun(value:System.IntPtr[])
---@overload fun(value:System.UIntPtr[])
---@overload fun(value:number[])
---@overload fun(value:number[])
---@overload fun(value:number[])
---@overload fun(value:System.Guid[])
---@param value boolean[]
function m:AddArray(value) end

---@param value string
function m:AddCustom(value) end

System.Diagnostics.Tracing.TraceLoggingDataCollector = m
return m
