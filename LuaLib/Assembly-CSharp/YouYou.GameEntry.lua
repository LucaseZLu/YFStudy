---@class YouYou.GameEntry : UnityEngine.MonoBehaviour
---@field public Event YouYou.EventComponent @static
---@field public Time YouYou.TimeComponent @static
---@field public Fsm YouYou.FsmComponent @static
---@field public Procedure YouYou.ProcedureComponent @static
---@field public DataTable YouYou.DataTableComponent @static
---@field public Socket YouYou.SocketComponent @static
---@field public Http YouYou.HttpComponent @static
---@field public Data YouYou.DataComponent @static
---@field public Localization YouYou.LocalizationComponent @static
---@field public Pool YouYou.PoolComponent @static
---@field public Scene YouYou.SceneComponent @static
---@field public Setting YouYou.SettingComponent @static
---@field public Resource YouYou.ResourceComponent @static
---@field public Download YouYou.DownloadComponent @static
---@field public UI YouYou.UIComponent @static
---@field public Lua YouYou.LuaComponent @static
local m = {}

---@static
---@param component YouYou.IUpdateComponent
function m.RegisterUpdateComponent(component) end

---@static
---@param component YouYou.IUpdateComponent
function m.RemoveUpdateComponent(component) end

---@overload fun(catetory:LogCategory, message:string) @static
---@static
---@param catetory LogCategory
---@param message string
---@param ... any|any[]
function m.Log(catetory, message, ...) end

---@overload fun(message:string) @static
---@static
---@param message string
---@param ... any|any[]
function m.LogError(message, ...) end

YouYou.GameEntry = m
return m
