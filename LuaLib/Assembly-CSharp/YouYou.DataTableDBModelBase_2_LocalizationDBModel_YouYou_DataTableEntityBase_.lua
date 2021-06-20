---@class YouYou.DataTableDBModelBase_2_LocalizationDBModel_YouYou_DataTableEntityBase_ : System.Object
---@field public DataTableName string
local m = {}

function m:LoadData() end

---@return YouYou.DataTableEntityBase[]
function m:GetList() end

---@param id number
---@return YouYou.DataTableEntityBase
function m:Get(id) end

function m:Clear() end

YouYou.DataTableDBModelBase_2_LocalizationDBModel_YouYou_DataTableEntityBase_ = m
return m
