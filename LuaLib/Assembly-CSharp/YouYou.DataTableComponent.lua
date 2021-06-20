---@class YouYou.DataTableComponent : YouYou.YouYouBaseComponent
---@field public DataTableManager YouYou.DataTableManager
local m = {}

---@virtual
function m:Shutdown() end

function m:LoadDataTableAsync() end

YouYou.DataTableComponent = m
return m
