﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class FsmBase
{
    /// <summary>
    /// 状态机编号
    /// </summary>
    public int FsmId { get; }

    /// <summary>
    /// 拥有者
    /// </summary>
    public Type Owner { get; }

    /// <summary>
    /// 当前状态类型
    /// </summary>
    public byte CurrStateType;

    public FsmBase(int fsmId)
    {
        FsmId = fsmId;
    }
    
    /// <summary>
    /// 关闭状态机
    /// </summary>
    public abstract void ShutDown();
}
