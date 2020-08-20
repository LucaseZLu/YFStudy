using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Serialization;

namespace YouYou
{
    public class TimeComponent : YouYouBaseComponent,IUpdateComponent
    {
    
       
        
        protected override void OnAwake()
        {
            base.OnAwake();
            GameEntry.RegisterUpdateComponent(this);
            m_TimeManager=new TimeManager();
        }
    
        #region 定时器
    
        private TimeManager m_TimeManager;
    
        /// <summary>
        /// 创建定时器
        /// </summary>
        /// <returns></returns>
        public TimeAction CreateTimeAction()
        {
            return GameEntry.Pool.DequeueClassObject<TimeAction>();
            
        }
        
        /// <summary>
        /// 添加定时器
        /// </summary>
        /// <param name="action"></param>
        internal void RegisterTimeAction(TimeAction action)
        {
            m_TimeManager.RegisterTimeAction(action);
        }
    
        /// <summary>
        /// 移除定时器
        /// </summary>
        /// <param name="action"></param>
        internal void RemoveTimeAction(TimeAction action)
        {
            m_TimeManager.RemoveTimeAction(action);
            GameEntry.Pool.EnqueueClassObject(action);
        }
    
        #endregion
        
        
        public void OnUpdate()
        {
            m_TimeManager.OnUpdate();
        }
    
        public override void Shutdown()
        {
            m_TimeManager.Dispose();
        }
    }
}

 