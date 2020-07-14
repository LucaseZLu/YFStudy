using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ProcedureComponent : YouYouBaseComponent,IUpdateComponent
{

    private ProcedureManager m_ProcedureManager;

    protected override void OnAwake()
    {
        base.OnAwake();
        GameEntity.RegisterUpdateComponent(this);
        m_ProcedureManager=new ProcedureManager();
    }
    
    public Dictionary<string,object>ParamDic
    {
        get { return m_ProcedureManager.ParamDic; }
    }
    
    /// <summary>
    /// 当前的流程状态
    /// </summary>
    public ProcedureState CurProcedureState
    {
        get { return m_ProcedureManager.CurProcedureState; }
    }

    /// <summary>
    /// 当前流程的状态
    /// </summary>
    public FsmState<ProcedureManager> CurProcedure
    {
        get { return m_ProcedureManager.CurProcedure; }
    }


    
    public void ChangeState(ProcedureState state)
    {
        m_ProcedureManager.ChangeState(state);
    }

    
    public override void Shutdown()
    {
        m_ProcedureManager.Dispose();  
    }

    public void OnUpdate()
    {
        m_ProcedureManager.OnUpdate();
    }
    
    protected override void OnStart()
    {
        base.OnStart();
        //要在start的时候初始化
        m_ProcedureManager.Init();
    }


}
