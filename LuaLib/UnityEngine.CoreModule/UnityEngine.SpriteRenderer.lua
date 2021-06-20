---@class UnityEngine.SpriteRenderer : UnityEngine.Renderer
---@field public sprite UnityEngine.Sprite
---@field public drawMode UnityEngine.SpriteDrawMode
---@field public size UnityEngine.Vector2
---@field public adaptiveModeThreshold number
---@field public tileMode UnityEngine.SpriteTileMode
---@field public color UnityEngine.Color
---@field public maskInteraction UnityEngine.SpriteMaskInteraction
---@field public flipX boolean
---@field public flipY boolean
---@field public spriteSortPoint UnityEngine.SpriteSortPoint
local m = {}

---@extension
function m.DeactivateDeformableBuffer() end

UnityEngine.SpriteRenderer = m
return m
