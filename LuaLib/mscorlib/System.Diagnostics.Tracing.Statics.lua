---@class System.Diagnostics.Tracing.Statics : System.Object
---@field public DefaultLevel number @static
---@field public TraceLoggingChannel number @static
---@field public InTypeMask number @static
---@field public InTypeFixedCountFlag number @static
---@field public InTypeVariableCountFlag number @static
---@field public InTypeCustomCountFlag number @static
---@field public InTypeCountMask number @static
---@field public InTypeChainFlag number @static
---@field public OutTypeMask number @static
---@field public OutTypeChainFlag number @static
---@field public EventTagsMask System.Diagnostics.Tracing.EventTags @static
---@field public IntPtrType System.Diagnostics.Tracing.TraceLoggingDataType @static
---@field public UIntPtrType System.Diagnostics.Tracing.TraceLoggingDataType @static
---@field public HexIntPtrType System.Diagnostics.Tracing.TraceLoggingDataType @static
local m = {}

---@static
---@param name string
---@param prefixSize number
---@param suffixSize number
---@param additionalSize number
---@return string
function m.MetadataForString(name, prefixSize, suffixSize, additionalSize) end

---@static
---@param tags number
---@param pos System.Int32
---@param metadata string
---@return System.Int32
function m.EncodeTags(tags, pos, metadata) end

---@overload fun(settingValue1:number, settingValue2:number, defaultValue:number): @static
---@overload fun(settingValue1:number, settingValue2:number): @static
---@static
---@param settingValue number
---@param defaultValue number
---@return number
function m.Combine(settingValue, defaultValue) end

---@static
---@param name string
function m.CheckName(name) end

---@static
---@param fieldName string
---@return boolean
function m.ShouldOverrideFieldName(fieldName) end

---@static
---@param baseType System.Diagnostics.Tracing.TraceLoggingDataType
---@param format System.Diagnostics.Tracing.EventFieldFormat
---@return System.Diagnostics.Tracing.TraceLoggingDataType
function m.MakeDataType(baseType, format) end

---@static
---@param format System.Diagnostics.Tracing.EventFieldFormat
---@param native System.Diagnostics.Tracing.TraceLoggingDataType
---@return System.Diagnostics.Tracing.TraceLoggingDataType
function m.Format8(format, native) end

---@static
---@param format System.Diagnostics.Tracing.EventFieldFormat
---@param native System.Diagnostics.Tracing.TraceLoggingDataType
---@return System.Diagnostics.Tracing.TraceLoggingDataType
function m.Format16(format, native) end

---@static
---@param format System.Diagnostics.Tracing.EventFieldFormat
---@param native System.Diagnostics.Tracing.TraceLoggingDataType
---@return System.Diagnostics.Tracing.TraceLoggingDataType
function m.Format32(format, native) end

---@static
---@param format System.Diagnostics.Tracing.EventFieldFormat
---@param native System.Diagnostics.Tracing.TraceLoggingDataType
---@return System.Diagnostics.Tracing.TraceLoggingDataType
function m.Format64(format, native) end

---@static
---@param format System.Diagnostics.Tracing.EventFieldFormat
---@param native System.Diagnostics.Tracing.TraceLoggingDataType
---@return System.Diagnostics.Tracing.TraceLoggingDataType
function m.FormatPtr(format, native) end

---@overload fun(type:System.Type): @static
---@static
---@param type System.Type
---@param ... any|any[]
---@return any
function m.CreateInstance(type, ...) end

---@static
---@param type System.Type
---@return boolean
function m.IsValueType(type) end

---@static
---@param type System.Type
---@return boolean
function m.IsEnum(type) end

---@static
---@param type System.Type
---@return System.Collections.Generic.IEnumerable_1_System_Reflection_PropertyInfo_
function m.GetProperties(type) end

---@static
---@param propInfo System.Reflection.PropertyInfo
---@return System.Reflection.MethodInfo
function m.GetGetMethod(propInfo) end

---@static
---@param declaringType System.Type
---@param name string
---@return System.Reflection.MethodInfo
function m.GetDeclaredStaticMethod(declaringType, name) end

---@static
---@param propInfo System.Reflection.PropertyInfo
---@param attributeType System.Type
---@return boolean
function m.HasCustomAttribute(propInfo, attributeType) end

---@overload fun(type:System.Type): @static
---@static
---@param propInfo System.Reflection.PropertyInfo
---@return System.Attribute
function m.GetCustomAttribute(propInfo) end

---@static
---@param type System.Type
---@return System.Type[]
function m.GetGenericArguments(type) end

---@static
---@param type System.Type
---@return System.Type
function m.FindEnumerableElementType(type) end

---@static
---@param type System.Type
---@param openType any
---@return boolean
function m.IsGenericMatch(type, openType) end

---@static
---@param delegateType System.Type
---@param methodInfo System.Reflection.MethodInfo
---@return fun(...:any|any[]):
function m.CreateDelegate(delegateType, methodInfo) end

---@static
---@param dataType System.Type
---@param recursionCheck System.Type[]
---@return System.Diagnostics.Tracing.TraceLoggingTypeInfo
function m.GetTypeInfoInstance(dataType, recursionCheck) end

---@static
---@param recursionCheck System.Type[]
---@return System.Diagnostics.Tracing.TraceLoggingTypeInfo
function m.CreateDefaultTypeInfo(recursionCheck) end

System.Diagnostics.Tracing.Statics = m
return m
