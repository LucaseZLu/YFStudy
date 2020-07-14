using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// 状态机的状态
/// </summary>
/// <typeparam name="T"></typeparam>
public abstract class FsmState<T> where T :class
{
    /// <summary>
    /// 状态对于的状态机
    /// </summary>
    /// <returns></returns>
    public Fsm<T> CurrFsm;

    /// <summary>
    /// 进入状态
    /// </summary>
    public virtual void OnEnter()
    {
    }

    /// <summary>
    /// 执行状态
    /// </summary>
    public virtual void OnUpdate()
    {
    }

    /// <summary>
    /// 离开状态
    /// </summary>
    public virtual void OnLeave()
    {
    }
    /// <summary>
    /// 状态机销毁时
    /// </summary>
    public virtual void OnDestroy()
    {
        
    }
}
