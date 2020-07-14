using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EventComponent : YouYouBaseComponent
{
    private EventManager m_EventManager;

    protected override void OnAwake()
    {
        base.OnAwake();
        m_EventManager=new EventManager();
        SocketEvent = m_EventManager.SocketEvent;
        CommonEvent = m_EventManager.CommonEvent;
    }

    public override void Shutdown()
    {
        m_EventManager.Dispose();
        
    }

    /// <summary>
    /// socket 事件
    /// </summary>
    public SocketEvent SocketEvent;
    public CommonEvent CommonEvent;
}
