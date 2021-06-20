---@class YouYou.UIFormBase : UnityEngine.MonoBehaviour
---@field public UIFormId number
---@field public GroupId number
---@field public CurrCanvas UnityEngine.Canvas
---@field public CloseTime number
---@field public DisableUILayer boolean
---@field public IsLock boolean
---@field public UserData any
local m = {}

function m:Close() end

function m:ToClose() end

YouYou.UIFormBase = m
return m
