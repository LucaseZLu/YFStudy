---@class Unity.Baselib.LowLevel.Binding : System.Object
---@field public Baselib_Memory_MaxAlignment System.UIntPtr @static
---@field public Baselib_Memory_MinGuaranteedAlignment System.UIntPtr @static
---@field public Baselib_NetworkAddress_IpMaxStringLength number @static
---@field public Baselib_RegisteredNetwork_Buffer_Id_Invalid System.IntPtr @static
---@field public Baselib_RegisteredNetwork_Endpoint_MaxSize number @static
---@field public Baselib_Thread_InvalidId System.IntPtr @static
---@field public Baselib_TLS_MinimumGuaranteedSlots number @static
---@field public Baselib_SecondsPerMinute number @static
---@field public Baselib_MillisecondsPerSecond number @static
---@field public Baselib_MillisecondsPerMinute number @static
---@field public Baselib_MicrosecondsPerMillisecond number @static
---@field public Baselib_MicrosecondsPerSecond number @static
---@field public Baselib_MicrosecondsPerMinute number @static
---@field public Baselib_NanosecondsPerMicrosecond number @static
---@field public Baselib_NanosecondsPerMillisecond number @static
---@field public Baselib_NanosecondsPerSecond number @static
---@field public Baselib_NanosecondsPerMinute number @static
---@field public Baselib_Timer_MaxNumberOfNanosecondsPerTick number @static
---@field public Baselib_Timer_MinNumberOfNanosecondsPerTick number @static
---@field public Baselib_Memory_PageAllocation_Invalid Unity.Baselib.LowLevel.Binding.Baselib_Memory_PageAllocation @static
---@field public Baselib_RegisteredNetwork_Socket_UDP_Invalid Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP @static
---@field public Baselib_Socket_Handle_Invalid Unity.Baselib.LowLevel.Binding.Baselib_Socket_Handle @static
---@field public Baselib_DynamicLibrary_Handle_Invalid Unity.Baselib.LowLevel.Binding.Baselib_DynamicLibrary_Handle @static
local m = {}

---@static
---@param pathname System.Byte*
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return Unity.Baselib.LowLevel.Binding.Baselib_DynamicLibrary_Handle
function m.Baselib_DynamicLibrary_Open(pathname, errorState) end

---@static
---@param handle Unity.Baselib.LowLevel.Binding.Baselib_DynamicLibrary_Handle
---@param functionName System.Byte*
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return System.IntPtr
function m.Baselib_DynamicLibrary_GetFunction(handle, functionName, errorState) end

---@static
---@param handle Unity.Baselib.LowLevel.Binding.Baselib_DynamicLibrary_Handle
function m.Baselib_DynamicLibrary_Close(handle) end

---@static
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@param buffer System.Byte*
---@param bufferLen number
---@param verbosity Unity.Baselib.LowLevel.Binding.Baselib_ErrorState_ExplainVerbosity
---@return number
function m.Baselib_ErrorState_Explain(errorState, buffer, bufferLen, verbosity) end

---@static
---@param outPagesSizeInfo Unity.Baselib.LowLevel.Binding.Baselib_Memory_PageSizeInfo*
function m.Baselib_Memory_GetPageSizeInfo(outPagesSizeInfo) end

---@static
---@param size System.UIntPtr
---@return System.IntPtr
function m.Baselib_Memory_Allocate(size) end

---@static
---@param ptr System.IntPtr
---@param newSize System.UIntPtr
---@return System.IntPtr
function m.Baselib_Memory_Reallocate(ptr, newSize) end

---@static
---@param ptr System.IntPtr
function m.Baselib_Memory_Free(ptr) end

---@static
---@param size System.UIntPtr
---@param alignment System.UIntPtr
---@return System.IntPtr
function m.Baselib_Memory_AlignedAllocate(size, alignment) end

---@static
---@param ptr System.IntPtr
---@param newSize System.UIntPtr
---@param alignment System.UIntPtr
---@return System.IntPtr
function m.Baselib_Memory_AlignedReallocate(ptr, newSize, alignment) end

---@static
---@param ptr System.IntPtr
function m.Baselib_Memory_AlignedFree(ptr) end

---@static
---@param pageSize number
---@param pageCount number
---@param alignmentInMultipleOfPageSize number
---@param pageState Unity.Baselib.LowLevel.Binding.Baselib_Memory_PageState
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return Unity.Baselib.LowLevel.Binding.Baselib_Memory_PageAllocation
function m.Baselib_Memory_AllocatePages(pageSize, pageCount, alignmentInMultipleOfPageSize, pageState, errorState) end

---@static
---@param pageAllocation Unity.Baselib.LowLevel.Binding.Baselib_Memory_PageAllocation
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
function m.Baselib_Memory_ReleasePages(pageAllocation, errorState) end

---@static
---@param addressOfFirstPage System.IntPtr
---@param pageSize number
---@param pageCount number
---@param pageState Unity.Baselib.LowLevel.Binding.Baselib_Memory_PageState
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
function m.Baselib_Memory_SetPageState(addressOfFirstPage, pageSize, pageCount, pageState, errorState) end

---@static
---@param dstAddress Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress*
---@param family Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress_Family
---@param ip System.Byte*
---@param port number
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
function m.Baselib_NetworkAddress_Encode(dstAddress, family, ip, port, errorState) end

---@static
---@param srcAddress Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress*
---@param family Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress_Family*
---@param ipAddressBuffer System.Byte*
---@param ipAddressBufferLen number
---@param port System.UInt16*
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
function m.Baselib_NetworkAddress_Decode(srcAddress, family, ipAddressBuffer, ipAddressBufferLen, port, errorState) end

---@static
---@param pageAllocation Unity.Baselib.LowLevel.Binding.Baselib_Memory_PageAllocation
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Buffer
function m.Baselib_RegisteredNetwork_Buffer_Register(pageAllocation, errorState) end

---@static
---@param buffer Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Buffer
function m.Baselib_RegisteredNetwork_Buffer_Deregister(buffer) end

---@static
---@param buffer Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Buffer
---@param offset number
---@param size number
---@return Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_BufferSlice
function m.Baselib_RegisteredNetwork_BufferSlice_Create(buffer, offset, size) end

---@static
---@return Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_BufferSlice
function m.Baselib_RegisteredNetwork_BufferSlice_Empty() end

---@static
---@param srcAddress Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress*
---@param dstSlice Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_BufferSlice
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Endpoint
function m.Baselib_RegisteredNetwork_Endpoint_Create(srcAddress, dstSlice, errorState) end

---@static
---@return Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Endpoint
function m.Baselib_RegisteredNetwork_Endpoint_Empty() end

---@static
---@param endpoint Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Endpoint
---@param dstAddress Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress*
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
function m.Baselib_RegisteredNetwork_Endpoint_GetNetworkAddress(endpoint, dstAddress, errorState) end

---@static
---@param bindAddress Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress*
---@param endpointReuse Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress_AddressReuse
---@param sendQueueSize number
---@param recvQueueSize number
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP
function m.Baselib_RegisteredNetwork_Socket_UDP_Create(bindAddress, endpointReuse, sendQueueSize, recvQueueSize, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP
---@param requests Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Request*
---@param requestsCount number
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return number
function m.Baselib_RegisteredNetwork_Socket_UDP_ScheduleRecv(socket, requests, requestsCount, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP
---@param requests Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Request*
---@param requestsCount number
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return number
function m.Baselib_RegisteredNetwork_Socket_UDP_ScheduleSend(socket, requests, requestsCount, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_ProcessStatus
function m.Baselib_RegisteredNetwork_Socket_UDP_ProcessRecv(socket, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_ProcessStatus
function m.Baselib_RegisteredNetwork_Socket_UDP_ProcessSend(socket, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP
---@param timeoutInMilliseconds number
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_CompletionQueueStatus
function m.Baselib_RegisteredNetwork_Socket_UDP_WaitForCompletedRecv(socket, timeoutInMilliseconds, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP
---@param timeoutInMilliseconds number
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_CompletionQueueStatus
function m.Baselib_RegisteredNetwork_Socket_UDP_WaitForCompletedSend(socket, timeoutInMilliseconds, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP
---@param results Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_CompletionResult*
---@param resultsCount number
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return number
function m.Baselib_RegisteredNetwork_Socket_UDP_DequeueRecv(socket, results, resultsCount, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP
---@param results Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_CompletionResult*
---@param resultsCount number
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return number
function m.Baselib_RegisteredNetwork_Socket_UDP_DequeueSend(socket, results, resultsCount, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP
---@param dstAddress Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress*
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
function m.Baselib_RegisteredNetwork_Socket_UDP_GetNetworkAddress(socket, dstAddress, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_RegisteredNetwork_Socket_UDP
function m.Baselib_RegisteredNetwork_Socket_UDP_Close(socket) end

---@static
---@param family Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress_Family
---@param protocol Unity.Baselib.LowLevel.Binding.Baselib_Socket_Protocol
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return Unity.Baselib.LowLevel.Binding.Baselib_Socket_Handle
function m.Baselib_Socket_Create(family, protocol, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_Socket_Handle
---@param address Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress*
---@param addressReuse Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress_AddressReuse
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
function m.Baselib_Socket_Bind(socket, address, addressReuse, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_Socket_Handle
---@param address Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress*
---@param addressReuse Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress_AddressReuse
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
function m.Baselib_Socket_TCP_Connect(socket, address, addressReuse, errorState) end

---@static
---@param sockets Unity.Baselib.LowLevel.Binding.Baselib_Socket_PollFd*
---@param socketsCount number
---@param timeoutInMilliseconds number
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
function m.Baselib_Socket_Poll(sockets, socketsCount, timeoutInMilliseconds, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_Socket_Handle
---@param address Unity.Baselib.LowLevel.Binding.Baselib_NetworkAddress*
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
function m.Baselib_Socket_GetAddress(socket, address, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_Socket_Handle
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
function m.Baselib_Socket_TCP_Listen(socket, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_Socket_Handle
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return Unity.Baselib.LowLevel.Binding.Baselib_Socket_Handle
function m.Baselib_Socket_TCP_Accept(socket, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_Socket_Handle
---@param messages Unity.Baselib.LowLevel.Binding.Baselib_Socket_Message*
---@param messagesCount number
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return number
function m.Baselib_Socket_UDP_Send(socket, messages, messagesCount, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_Socket_Handle
---@param data System.IntPtr
---@param dataLen number
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return number
function m.Baselib_Socket_TCP_Send(socket, data, dataLen, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_Socket_Handle
---@param messages Unity.Baselib.LowLevel.Binding.Baselib_Socket_Message*
---@param messagesCount number
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return number
function m.Baselib_Socket_UDP_Recv(socket, messages, messagesCount, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_Socket_Handle
---@param data System.IntPtr
---@param dataLen number
---@param errorState Unity.Baselib.LowLevel.Binding.Baselib_ErrorState*
---@return number
function m.Baselib_Socket_TCP_Recv(socket, data, dataLen, errorState) end

---@static
---@param socket Unity.Baselib.LowLevel.Binding.Baselib_Socket_Handle
function m.Baselib_Socket_Close(socket) end

---@static
function m.Baselib_Thread_YieldExecution() end

---@static
---@return System.IntPtr
function m.Baselib_Thread_GetCurrentThreadId() end

---@static
---@return System.UIntPtr
function m.Baselib_TLS_Alloc() end

---@static
---@param handle System.UIntPtr
function m.Baselib_TLS_Free(handle) end

---@static
---@param handle System.UIntPtr
---@param value System.UIntPtr
function m.Baselib_TLS_Set(handle, value) end

---@static
---@param handle System.UIntPtr
---@return System.UIntPtr
function m.Baselib_TLS_Get(handle) end

---@static
---@return Unity.Baselib.LowLevel.Binding.Baselib_Timer_TickToNanosecondConversionRatio
function m.Baselib_Timer_GetTicksToNanosecondsConversionRatio() end

---@static
---@return number
function m.Baselib_Timer_GetHighPrecisionTimerTicks() end

---@static
---@param timeInMilliseconds number
function m.Baselib_Timer_WaitForAtLeast(timeInMilliseconds) end

---@static
---@return number
function m.Baselib_Timer_GetTimeSinceStartupInSeconds() end

Unity.Baselib.LowLevel.Binding = m
return m
