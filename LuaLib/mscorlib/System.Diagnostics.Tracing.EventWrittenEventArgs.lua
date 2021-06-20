---@class System.Diagnostics.Tracing.EventWrittenEventArgs : System.EventArgs
---@field public EventName string
---@field public EventId number
---@field public ActivityId System.Guid
---@field public RelatedActivityId System.Guid
---@field public Payload any[]
---@field public PayloadNames string[]
---@field public EventSource System.Diagnostics.Tracing.EventSource
---@field public Keywords System.Diagnostics.Tracing.EventKeywords
---@field public Opcode System.Diagnostics.Tracing.EventOpcode
---@field public Task System.Diagnostics.Tracing.EventTask
---@field public Tags System.Diagnostics.Tracing.EventTags
---@field public Message string
---@field public Channel System.Diagnostics.Tracing.EventChannel
---@field public Version number
---@field public Level System.Diagnostics.Tracing.EventLevel
local m = {}

System.Diagnostics.Tracing.EventWrittenEventArgs = m
return m
