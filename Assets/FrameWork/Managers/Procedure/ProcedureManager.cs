using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using YouYou;

/// <summary>
/// 流程状态枚举
/// </summary>
public enum ProcedureState
{
    Launch = 0,
    CheckVersion = 1,
    Preload = 2,
    ChangeScene = 3,
    LogOn = 4,
    SelectRole = 5,
    EnterGame = 6,
    WorldMap = 7,
    GameLevel = 8
}

/// <summary>
/// 流程管理器
/// </summary>
public class ProcedureManager : ManagerBase,System.IDisposable
{
    /// <summary>
    /// 流程状态机
    /// </summary>
    private Fsm<ProcedureManager> m_CurrFsm;

    /// <summary>
    /// 当前流程状态机
    /// </summary>
    public Fsm<ProcedureManager> CurrFsm => m_CurrFsm;

    /// <summary>
    /// 当前的流程状态
    /// </summary>
    public ProcedureState CurProcedureState
    {
        get { return (ProcedureState) m_CurrFsm.CurrStateType; }
    }

    /// <summary>
    /// 当前流程的状态
    /// </summary>
    public FsmState<ProcedureManager> CurProcedure
    {
        get { return m_CurrFsm.GetState(m_CurrFsm.CurrStateType); }
    }

    public ProcedureManager()
    {
        
    }

    public void Init()
    {
        FsmState<ProcedureManager>[] states=new FsmState<ProcedureManager>[9];
        states[0] = new ProcedureLaunch();
        states[1] = new ProcedureCheckVersion();
        states[2] = new ProcedurePreload();
        states[3] = new ProcedureChangeScene();
        states[4] = new ProcedureLogOn();
        states[5] = new ProcedureSelectRole();
        states[6] = new ProcedureEnterGame();
        states[7] = new ProcedureWorldMap();
        states[8] = new ProcedureGameLevel();
        
        m_CurrFsm = GameEntry.Fsm.Create(this, states);
        m_CurrFsm.ChangeState(0);
        // m_CurrState = m_StateDic[CurrStateType];
        // m_CurrState.OnEnter();
    }

    public void ChangeState(ProcedureState state)
    {
        m_CurrFsm.ChangeState((byte)state);
    }

    public void OnUpdate()
    {
        m_CurrFsm.OnUpdate();
    }
    
    public void Dispose()
    {
        //m_CurrFsm.ShutDown();
    }
}
