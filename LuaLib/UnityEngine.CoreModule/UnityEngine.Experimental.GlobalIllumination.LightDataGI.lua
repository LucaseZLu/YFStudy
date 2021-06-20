---@class UnityEngine.Experimental.GlobalIllumination.LightDataGI : System.ValueType
---@field public instanceID number
---@field public cookieID number
---@field public cookieScale number
---@field public color UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field public indirectColor UnityEngine.Experimental.GlobalIllumination.LinearColor
---@field public orientation UnityEngine.Quaternion
---@field public position UnityEngine.Vector3
---@field public range number
---@field public coneAngle number
---@field public innerConeAngle number
---@field public shape0 number
---@field public shape1 number
---@field public type UnityEngine.Experimental.GlobalIllumination.LightType
---@field public mode UnityEngine.Experimental.GlobalIllumination.LightMode
---@field public shadow number
---@field public falloff UnityEngine.Experimental.GlobalIllumination.FalloffType
local m = {}

---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.PointLight, cookie:UnityEngine.Experimental.GlobalIllumination.Cookie):(, UnityEngine.Experimental.GlobalIllumination.Cookie)
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.SpotLight, cookie:UnityEngine.Experimental.GlobalIllumination.Cookie):(, UnityEngine.Experimental.GlobalIllumination.Cookie)
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.RectangleLight, cookie:UnityEngine.Experimental.GlobalIllumination.Cookie):(, UnityEngine.Experimental.GlobalIllumination.Cookie)
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.DiscLight, cookie:UnityEngine.Experimental.GlobalIllumination.Cookie):(, UnityEngine.Experimental.GlobalIllumination.Cookie)
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.SpotLightBoxShape, cookie:UnityEngine.Experimental.GlobalIllumination.Cookie):(, UnityEngine.Experimental.GlobalIllumination.Cookie)
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.SpotLightPyramidShape, cookie:UnityEngine.Experimental.GlobalIllumination.Cookie):(, UnityEngine.Experimental.GlobalIllumination.Cookie)
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.DirectionalLight):
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.PointLight):
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.SpotLight):
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.RectangleLight):
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.DiscLight):
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.SpotLightBoxShape):
---@overload fun(light:UnityEngine.Experimental.GlobalIllumination.SpotLightPyramidShape):
---@param light UnityEngine.Experimental.GlobalIllumination.DirectionalLight
---@param cookie UnityEngine.Experimental.GlobalIllumination.Cookie
---@return UnityEngine.Experimental.GlobalIllumination.DirectionalLight, UnityEngine.Experimental.GlobalIllumination.Cookie
function m:Init(light, cookie) end

---@param lightInstanceID number
function m:InitNoBake(lightInstanceID) end

UnityEngine.Experimental.GlobalIllumination.LightDataGI = m
return m
