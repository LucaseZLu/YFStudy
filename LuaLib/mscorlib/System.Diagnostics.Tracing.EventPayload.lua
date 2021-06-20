---@class System.Diagnostics.Tracing.EventPayload : System.Object
---@field public Keys System.Collections.Generic.ICollection_1_System_String_
---@field public Values System.Collections.Generic.ICollection_1_System_Object_
---@field public Item any
---@field public Count number
---@field public IsReadOnly boolean
local m = {}

---@overload fun(payloadEntry:System.Collections.Generic.KeyValuePair_2_System_String_System_Object_) @virtual
---@virtual
---@param key string
---@param value any
function m:Add(key, value) end

---@virtual
function m:Clear() end

---@virtual
---@param entry System.Collections.Generic.KeyValuePair_2_System_String_System_Object_
---@return boolean
function m:Contains(entry) end

---@virtual
---@param key string
---@return boolean
function m:ContainsKey(key) end

---@virtual
---@return System.Collections.Generic.IEnumerator_1_System_Collections_Generic_KeyValuePair_2_System_String_System_Object__
function m:GetEnumerator() end

---@virtual
---@param payloadEntries System.Collections.Generic.KeyValuePair_2_System_String_System_Object_[]
---@param count number
function m:CopyTo(payloadEntries, count) end

---@overload fun(entry:System.Collections.Generic.KeyValuePair_2_System_String_System_Object_): @virtual
---@virtual
---@param key string
---@return boolean
function m:Remove(key) end

---@virtual
---@param key string
---@return boolean, System.Object
function m:TryGetValue(key) end

System.Diagnostics.Tracing.EventPayload = m
return m
