---@class System.Diagnostics.Tracing.ManifestEnvelope : System.ValueType
---@field public MaxChunkSize number @static
---@field public Format System.Diagnostics.Tracing.ManifestEnvelope.ManifestFormats
---@field public MajorVersion number
---@field public MinorVersion number
---@field public Magic number
---@field public TotalChunks number
---@field public ChunkNumber number
local m = {}

System.Diagnostics.Tracing.ManifestEnvelope = m
return m
