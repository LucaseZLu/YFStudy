---@class YouYou.VariableBase : System.Object
---@field public Type System.Type
---@field public ReferenceCount number
local m = {}

function m:Retain() end

function m:Release() end

YouYou.VariableBase = m
return m
