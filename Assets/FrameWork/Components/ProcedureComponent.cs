using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace YouYou
{
    public class ProcedureComponent : YouYouBaseComponent,IUpdateComponent
    {
    
        private ProcedureManager m_ProcedureManager;
    
        protected override void OnAwake()
        {
            base.OnAwake();
            GameEntry.RegisterUpdateComponent(this);
            m_ProcedureManager=new ProcedureManager();
        }
    
        protected override void OnStart()
        {
            base.OnStart();
            //要在start的时候初始化
            m_ProcedureManager.Init();
        }
        
        /// <summary>
        /// 设置参数值
        /// </summary>
        /// <param name="key"></param>
        /// <param name="value"></param>
        /// <typeparam name="TData">泛型类型</typeparam>
        public void SetData<TData>(string key, TData value)
        {
            m_ProcedureManager.CurrFsm.SetData<TData>(key,value);
        }
    
        /// <summary>
        /// 获取参数值
        /// </summary>
        /// <param name="key"></param>
        /// <typeparam name="TData"></typeparam>
        /// <returns></returns>
        public TData GetData<TData>(string key)
        {
            return m_ProcedureManager.CurrFsm.GetData<TData>(key);
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
        
    
    
    
    }
}

