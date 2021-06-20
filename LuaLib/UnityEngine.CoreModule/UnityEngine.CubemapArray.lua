---@class UnityEngine.CubemapArray : UnityEngine.Texture
---@field public cubemapCount number
---@field public format UnityEngine.TextureFormat
---@field public isReadable boolean
local m = {}

---@overload fun(face:UnityEngine.CubemapFace, arrayElement:number):
---@param face UnityEngine.CubemapFace
---@param arrayElement number
---@param miplevel number
---@return UnityEngine.Color[]
function m:GetPixels(face, arrayElement, miplevel) end

---@overload fun(face:UnityEngine.CubemapFace, arrayElement:number):
---@param face UnityEngine.CubemapFace
---@param arrayElement number
---@param miplevel number
---@return UnityEngine.Color32[]
function m:GetPixels32(face, arrayElement, miplevel) end

---@overload fun(colors:UnityEngine.Color[], face:UnityEngine.CubemapFace, arrayElement:number)
---@param colors UnityEngine.Color[]
---@param face UnityEngine.CubemapFace
---@param arrayElement number
---@param miplevel number
function m:SetPixels(colors, face, arrayElement, miplevel) end

---@overload fun(colors:UnityEngine.Color32[], face:UnityEngine.CubemapFace, arrayElement:number)
---@param colors UnityEngine.Color32[]
---@param face UnityEngine.CubemapFace
---@param arrayElement number
---@param miplevel number
function m:SetPixels32(colors, face, arrayElement, miplevel) end

---@overload fun(updateMipmaps:boolean)
---@overload fun()
---@param updateMipmaps boolean
---@param makeNoLongerReadable boolean
function m:Apply(updateMipmaps, makeNoLongerReadable) end

---@overload fun(data:any[], mipLevel:number, face:UnityEngine.CubemapFace, element:number)
---@overload fun(data:System.ValueType, mipLevel:number, face:UnityEngine.CubemapFace, element:number, sourceDataStartIndex:number)
---@overload fun(data:System.ValueType, mipLevel:number, face:UnityEngine.CubemapFace, element:number)
---@param data any[]
---@param mipLevel number
---@param face UnityEngine.CubemapFace
---@param element number
---@param sourceDataStartIndex number
function m:SetPixelData(data, mipLevel, face, element, sourceDataStartIndex) end

---@param mipLevel number
---@param face UnityEngine.CubemapFace
---@param element number
---@return System.ValueType
function m:GetPixelData(mipLevel, face, element) end

UnityEngine.CubemapArray = m
return m
