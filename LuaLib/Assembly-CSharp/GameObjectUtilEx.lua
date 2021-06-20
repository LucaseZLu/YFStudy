---@class GameObjectUtilEx : System.Object
local m = {}

---@static
---@param obj UnityEngine.GameObject
---@return UnityEngine.MonoBehaviour
function m.GetOrCreatComponent(obj) end

---@static
---@param obj UnityEngine.GameObject
---@param parent UnityEngine.Transform
function m.SetParent(obj, parent) end

---@static
---@param obj UnityEngine.GameObject
---@param layerName string
function m.SetLayer(obj, layerName) end

---@overload fun(arr:UnityEngine.Transform[]) @static
---@overload fun(arr:UnityEngine.Sprite[]) @static
---@overload fun(arr:UnityEngine.GameObject[]) @static
---@static
---@param arr UnityEngine.MonoBehaviour[]
function m.SetNull(arr) end

---@overload fun(txtObj:UnityEngine.UI.Text, text:string, isAnimation:boolean, duration:number) @static
---@overload fun(txtObj:UnityEngine.UI.Text, text:string, isAnimation:boolean) @static
---@overload fun(txtObj:UnityEngine.UI.Text, text:string) @static
---@static
---@param txtObj UnityEngine.UI.Text
---@param text string
---@param isAnimation boolean
---@param duration number
---@param scrambleMode DG.Tweening.ScrambleMode
function m.SetText(txtObj, text, isAnimation, duration, scrambleMode) end

---@static
---@param sliderObj UnityEngine.UI.Slider
---@param value number
function m.SetSliderValue(sliderObj, value) end

---@static
---@param imgObj UnityEngine.UI.Image
---@param sprite UnityEngine.Sprite
function m.SetImage(imgObj, sprite) end

GameObjectUtilEx = m
return m
