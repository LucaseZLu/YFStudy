---@class UnityEngine.LightingSettings : UnityEngine.Object
---@field public bakedGI boolean
---@field public realtimeGI boolean
---@field public realtimeEnvironmentLighting boolean
---@field public autoGenerate boolean
---@field public mixedBakeMode UnityEngine.MixedLightingMode
---@field public albedoBoost number
---@field public indirectScale number
---@field public lightmapper UnityEngine.LightingSettings.Lightmapper
---@field public lightmapMaxSize number
---@field public lightmapResolution number
---@field public lightmapPadding number
---@field public compressLightmaps boolean
---@field public ao boolean
---@field public aoMaxDistance number
---@field public aoExponentIndirect number
---@field public aoExponentDirect number
---@field public extractAO boolean
---@field public directionalityMode UnityEngine.LightmapsMode
---@field public exportTrainingData boolean
---@field public trainingDataDestination string
---@field public indirectResolution number
---@field public finalGather boolean
---@field public finalGatherRayCount number
---@field public finalGatherFiltering boolean
---@field public sampling UnityEngine.LightingSettings.Sampling
---@field public directSampleCount number
---@field public indirectSampleCount number
---@field public bounces number
---@field public maxBounces number
---@field public russianRouletteStartBounce number
---@field public minBounces number
---@field public prioritizeView boolean
---@field public filteringMode UnityEngine.LightingSettings.FilterMode
---@field public denoiserTypeDirect UnityEngine.LightingSettings.DenoiserType
---@field public denoiserTypeIndirect UnityEngine.LightingSettings.DenoiserType
---@field public denoiserTypeAO UnityEngine.LightingSettings.DenoiserType
---@field public filterTypeDirect UnityEngine.LightingSettings.FilterType
---@field public filterTypeIndirect UnityEngine.LightingSettings.FilterType
---@field public filterTypeAO UnityEngine.LightingSettings.FilterType
---@field public filteringGaussRadiusDirect number
---@field public filteringGaussRadiusIndirect number
---@field public filteringGaussRadiusAO number
---@field public filteringAtrousPositionSigmaDirect number
---@field public filteringAtrousPositionSigmaIndirect number
---@field public filteringAtrousPositionSigmaAO number
---@field public environmentSampleCount number
---@field public lightProbeSampleCountMultiplier number
local m = {}

UnityEngine.LightingSettings = m
return m