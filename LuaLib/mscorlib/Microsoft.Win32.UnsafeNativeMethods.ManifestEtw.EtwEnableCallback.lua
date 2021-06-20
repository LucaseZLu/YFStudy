---@class Microsoft.Win32.UnsafeNativeMethods.ManifestEtw.EtwEnableCallback : System.MulticastDelegate
local m = {}

---@virtual
---@param sourceId System.Guid
---@param isEnabled number
---@param level number
---@param matchAnyKeywords number
---@param matchAllKeywords number
---@param filterData Microsoft.Win32.UnsafeNativeMethods.ManifestEtw.EVENT_FILTER_DESCRIPTOR*
---@param callbackContext System.Void*
---@return System.Guid
function m:Invoke(sourceId, isEnabled, level, matchAnyKeywords, matchAllKeywords, filterData, callbackContext) end

---@virtual
---@param sourceId System.Guid
---@param isEnabled number
---@param level number
---@param matchAnyKeywords number
---@param matchAllKeywords number
---@param filterData Microsoft.Win32.UnsafeNativeMethods.ManifestEtw.EVENT_FILTER_DESCRIPTOR*
---@param callbackContext System.Void*
---@param callback fun(ar:System.IAsyncResult)
---@param object any
---@return System.IAsyncResult, System.Guid
function m:BeginInvoke(sourceId, isEnabled, level, matchAnyKeywords, matchAllKeywords, filterData, callbackContext, callback, object) end

---@virtual
---@param sourceId System.Guid
---@param result System.IAsyncResult
---@return System.Guid
function m:EndInvoke(sourceId, result) end

Microsoft.Win32.UnsafeNativeMethods.ManifestEtw.EtwEnableCallback = m
return m
