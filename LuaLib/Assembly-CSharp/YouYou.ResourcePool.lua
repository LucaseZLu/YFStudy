---@class YouYou.ResourcePool : System.Object
---@field public InspectorDic System.Collections.Generic.Dictionary_2_System_String_System_Int32_
---@field public PoolName string
local m = {}

---@param entity YouYou.ResourceEntity
function m:Register(entity) end

---@param resourceName string
---@return YouYou.ResourceEntity
function m:Spawn(resourceName) end

---@param resourceName string
function m:Unspawn(resourceName) end

function m:Release() end

function m:ReleaseAll() end

YouYou.ResourcePool = m
return m
