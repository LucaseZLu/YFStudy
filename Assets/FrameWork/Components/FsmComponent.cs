using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FsmComponent : YouYouBaseComponent
{

    private FsmManager m_FsmManager;
    /// <summary>
    /// 状态机临时编号
    /// </summary>
    private int m_TemFsmId = 0;
    protected override void OnAwake()
    {
        base.OnAwake();
       
        m_FsmManager=new FsmManager();
    }

    #region MyRegion

    /// <summary>
    /// 创建状态机
    /// </summary>
    /// <param name="fsmId">状态机编号</param>
    /// <param name="owner">拥有者</param>
    /// <param name="states">状态数组</param>
    /// <typeparam name="T">状态者类型</typeparam>
    /// <returns></returns>
    public Fsm<T> Create<T>(T owner, FsmState<T>[] states) where T : class
    {
        return m_FsmManager.Create(m_TemFsmId++, owner, states);
    }

    /// <summary>
    /// 销毁状态机
    /// </summary>
    /// <param name="fsmId"></param>
    public void DestroyFsm(int fsmId)
    {
        m_FsmManager.DestroyFsm(fsmId);
     
    }
    
    public override void Shutdown()
    {
        m_FsmManager.Dispose();
    }

    #endregion


}
