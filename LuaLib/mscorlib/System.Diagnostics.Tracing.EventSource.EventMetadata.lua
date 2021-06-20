---@class System.Diagnostics.Tracing.EventSource.EventMetadata : System.ValueType
---@field public Descriptor System.Diagnostics.Tracing.EventDescriptor
---@field public Tags System.Diagnostics.Tracing.EventTags
---@field public EnabledForAnyListener boolean
---@field public EnabledForETW boolean
---@field public HasRelatedActivityID boolean
---@field public TriggersActivityTracking number
---@field public Name string
---@field public Message string
---@field public Parameters System.Reflection.ParameterInfo[]
---@field public TraceLoggingEventTypes System.Diagnostics.Tracing.TraceLoggingEventTypes
---@field public ActivityOptions System.Diagnostics.Tracing.EventActivityOptions
local m = {}

System.Diagnostics.Tracing.EventSource.EventMetadata = m
return m
