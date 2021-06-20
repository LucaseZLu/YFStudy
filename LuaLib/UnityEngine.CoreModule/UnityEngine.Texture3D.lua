---@class UnityEngine.Texture3D : UnityEngine.Texture
---@field public depth number
---@field public format UnityEngine.TextureFormat
---@field public isReadable boolean
local m = {}

---@param nativeTex System.IntPtr
function m:UpdateExternalTexture(nativeTex) end

---@overload fun():
---@param miplevel number
---@return UnityEngine.Color[]
function m:GetPixels(miplevel) end

---@overload fun():
---@param miplevel number
---@return UnityEngine.Color32[]
function m:GetPixels32(miplevel) end

---@overload fun(colors:UnityEngine.Color[])
---@param colors UnityEngine.Color[]
---@param miplevel number
function m:SetPixels(colors, miplevel) end

---@overload fun(colors:UnityEngine.Color32[])
---@param colors UnityEngine.Color32[]
---@param miplevel number
function m:SetPixels32(colors, miplevel) end

---@static
---@param width number
---@param height number
---@param depth number
---@param format UnityEngine.TextureFormat
---@param mipChain boolean
---@param nativeTex System.IntPtr
---@return UnityEngine.Texture3D
function m.CreateExternalTexture(width, height, depth, format, mipChain, nativeTex) end

---@overload fun(updateMipmaps:boolean)
---@overload fun()
---@param updateMipmaps boolean
---@param makeNoLongerReadable boolean
function m:Apply(updateMipmaps, makeNoLongerReadable) end

---@overload fun(x:number, y:number, z:number, color:UnityEngine.Color, mipLevel:number)
---@param x number
---@param y number
---@param z number
---@param color UnityEngine.Color
function m:SetPixel(x, y, z, color) end

---@overload fun(x:number, y:number, z:number, mipLevel:number):
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Color
function m:GetPixel(x, y, z) end

---@overload fun(u:number, v:number, w:number, mipLevel:number):
---@param u number
---@param v number
---@param w number
---@return UnityEngine.Color
function m:GetPixelBilinear(u, v, w) end

---@overload fun(data:any[], mipLevel:number)
---@overload fun(data:System.ValueType, mipLevel:number, sourceDataStartIndex:number)
---@overload fun(data:System.ValueType, mipLevel:number)
---@param data any[]
---@param mipLevel number
---@param sourceDataStartIndex number
function m:SetPixelData(data, mipLevel, sourceDataStartIndex) end

---@param mipLevel number
---@return System.ValueType
function m:GetPixelData(mipLevel) end

UnityEngine.Texture3D = m
return m
