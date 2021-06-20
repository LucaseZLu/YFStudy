---@class UnityEngine.Cubemap : UnityEngine.Texture
---@field public format UnityEngine.TextureFormat
---@field public isReadable boolean
---@field public streamingMipmaps boolean
---@field public streamingMipmapsPriority number
---@field public requestedMipmapLevel number
---@field public desiredMipmapLevel number
---@field public loadingMipmapLevel number
---@field public loadedMipmapLevel number
local m = {}

---@param nativeTexture System.IntPtr
function m:UpdateExternalTexture(nativeTexture) end

---@overload fun()
---@param smoothRegionWidthInPixels number
function m:SmoothEdges(smoothRegionWidthInPixels) end

---@overload fun(face:UnityEngine.CubemapFace):
---@param face UnityEngine.CubemapFace
---@param miplevel number
---@return UnityEngine.Color[]
function m:GetPixels(face, miplevel) end

---@overload fun(colors:UnityEngine.Color[], face:UnityEngine.CubemapFace)
---@param colors UnityEngine.Color[]
---@param face UnityEngine.CubemapFace
---@param miplevel number
function m:SetPixels(colors, face, miplevel) end

function m:ClearRequestedMipmapLevel() end

---@return boolean
function m:IsRequestedMipmapLevelLoaded() end

---@static
---@param width number
---@param format UnityEngine.TextureFormat
---@param mipmap boolean
---@param nativeTex System.IntPtr
---@return UnityEngine.Cubemap
function m.CreateExternalTexture(width, format, mipmap, nativeTex) end

---@overload fun(data:any[], mipLevel:number, face:UnityEngine.CubemapFace)
---@overload fun(data:System.ValueType, mipLevel:number, face:UnityEngine.CubemapFace, sourceDataStartIndex:number)
---@overload fun(data:System.ValueType, mipLevel:number, face:UnityEngine.CubemapFace)
---@param data any[]
---@param mipLevel number
---@param face UnityEngine.CubemapFace
---@param sourceDataStartIndex number
function m:SetPixelData(data, mipLevel, face, sourceDataStartIndex) end

---@param mipLevel number
---@param face UnityEngine.CubemapFace
---@return System.ValueType
function m:GetPixelData(mipLevel, face) end

---@param face UnityEngine.CubemapFace
---@param x number
---@param y number
---@param color UnityEngine.Color
function m:SetPixel(face, x, y, color) end

---@param face UnityEngine.CubemapFace
---@param x number
---@param y number
---@return UnityEngine.Color
function m:GetPixel(face, x, y) end

---@overload fun(updateMipmaps:boolean)
---@overload fun()
---@param updateMipmaps boolean
---@param makeNoLongerReadable boolean
function m:Apply(updateMipmaps, makeNoLongerReadable) end

UnityEngine.Cubemap = m
return m
