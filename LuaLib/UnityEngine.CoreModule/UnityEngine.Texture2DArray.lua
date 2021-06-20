---@class UnityEngine.Texture2DArray : UnityEngine.Texture
---@field public allSlices number @static
---@field public depth number
---@field public format UnityEngine.TextureFormat
---@field public isReadable boolean
local m = {}

---@overload fun(arrayElement:number):
---@param arrayElement number
---@param miplevel number
---@return UnityEngine.Color[]
function m:GetPixels(arrayElement, miplevel) end

---@overload fun(arrayElement:number):
---@param arrayElement number
---@param miplevel number
---@return UnityEngine.Color32[]
function m:GetPixels32(arrayElement, miplevel) end

---@overload fun(colors:UnityEngine.Color[], arrayElement:number)
---@param colors UnityEngine.Color[]
---@param arrayElement number
---@param miplevel number
function m:SetPixels(colors, arrayElement, miplevel) end

---@overload fun(colors:UnityEngine.Color32[], arrayElement:number)
---@param colors UnityEngine.Color32[]
---@param arrayElement number
---@param miplevel number
function m:SetPixels32(colors, arrayElement, miplevel) end

---@overload fun(updateMipmaps:boolean)
---@overload fun()
---@param updateMipmaps boolean
---@param makeNoLongerReadable boolean
function m:Apply(updateMipmaps, makeNoLongerReadable) end

---@overload fun(data:any[], mipLevel:number, element:number)
---@overload fun(data:System.ValueType, mipLevel:number, element:number, sourceDataStartIndex:number)
---@overload fun(data:System.ValueType, mipLevel:number, element:number)
---@param data any[]
---@param mipLevel number
---@param element number
---@param sourceDataStartIndex number
function m:SetPixelData(data, mipLevel, element, sourceDataStartIndex) end

---@param mipLevel number
---@param element number
---@return System.ValueType
function m:GetPixelData(mipLevel, element) end

UnityEngine.Texture2DArray = m
return m
