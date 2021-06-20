---@class YouYou.UIComponent : YouYou.YouYouBaseComponent
---@field public UICamera UnityEngine.Camera
---@field public UIExpire number
---@field public UIPoolMaxCount number
local m = {}

function m:LoadingFormCanvasScaler() end

function m:FullFormCanvasScaler() end

function m:NormalFormCanvasScaler() end

---@param id number
---@return YouYou.UIGroup
function m:GetUIGroup(id) end

---@overload fun(uiFormId:number, userData:any)
---@overload fun(uiFormId:number)
---@param uiFormId number
---@param userData any
---@param onOpen fun(t1:YouYou.UIFormBase)
function m:OpenUIForm(uiFormId, userData, onOpen) end

---@overload fun(formBase:YouYou.UIFormBase)
---@param uiformId number
function m:CloseUIForm(uiformId) end

---@param formBase YouYou.UIFormBase
---@param isAdd boolean
function m:SetSortingOrder(formBase, isAdd) end

---@param uiformId number
---@return YouYou.UIFormBase
function m:Dequeue(uiformId) end

---@param form YouYou.UIFormBase
function m:Enqueue(form) end

---@virtual
function m:OnUpdate() end

---@virtual
function m:Shutdown() end

YouYou.UIComponent = m
return m
