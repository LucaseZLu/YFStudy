---@class TestMD5 : UnityEngine.MonoBehaviour
local m = {}

---@param folderPath string
function m:GetDir(folderPath) end

---@param fileName string
---@return string
function m:GetMD5HashFromFile(fileName) end

TestMD5 = m
return m
