using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace YouYou
{
    /// <summary>
    /// 定时器
    /// </summary>
    public class TimeAction
    {
        /// <summary>
        /// 是否运行中
        /// </summary>
        public bool IsRuning
        {
            get;
            private set;
        }

        /// <summary>
        /// 是否暂停
        /// </summary>
        public bool m_IsPause = false;

        /// <summary>
        /// 当前运行的时间
        /// </summary>
        private float m_CurrRunTime;

        /// <summary>
        /// 当前循环次数
        /// </summary>
        private int m_CurrLoop;

        /// <summary>
        /// 延迟时间
        /// </summary>
        private float m_DelayTime;

        /// <summary>
        /// 间隔（秒）
        /// </summary>
        private float m_Interval;

        /// <summary>
        /// 循环次数(-1表示 无限循环 0也会循环一次)
        /// </summary>
        private int m_Loop;

        /// <summary>
        /// 最后的暂停时间
        /// </summary>
        private float m_LasetPauseTime;

        /// <summary>
        /// 暂停了多久
        /// </summary>
        private float m_PauseTime;
        
        /// <summary>
        /// 开始运行
        /// </summary>
        private Action m_OnStar;

        /// <summary>
        /// 运行中 回调参数表示剩余次数
        /// </summary>
        private Action<int> m_OnUpdate;

        /// <summary>
        /// 运行完毕
        /// </summary>
        private Action m_OnComplete;

        /// <summary>
        /// 初始化
        /// </summary>
        /// <param name="delayTime">延迟时间</param>
        /// <param name="interval">间隔</param>
        /// <param name="loop">循环次数</param>
        /// <param name="onStar"></param>
        /// <param name="onUpdate"></param>
        /// <param name="onComplete"></param>
        /// <returns></returns>
        public TimeAction Init(float delayTime, float interval, int loop, Action onStar, Action<int> onUpdate, Action onComplete)
        {
            m_DelayTime = delayTime;
            m_Interval = interval;
            m_Loop = loop;
            m_OnStar = onStar;
            m_OnUpdate = onUpdate;
            m_OnComplete = onComplete;

            return this;
        }

        /// <summary>
        /// 运行
        /// </summary>
        public void Run()
        {
            //1.需要先把自己加入时间管理器的链表中
            GameEntry.Time.RegisterTimeAction(this);

            //2.设置当前运行的时间
            m_CurrRunTime = Time.time;
            
            m_IsPause=false;
        }

        public void Pause()
        {
            m_LasetPauseTime = Time.time;
            m_IsPause = true;
            GameEntry.LogError("暂停运行");
        }

        public void Resume()
        {
            m_IsPause = false;
            m_PauseTime = Time.time - m_LasetPauseTime;
            GameEntry.LogError("恢复运行 暂停了m_PauseTime"+m_PauseTime);
        }

        public void Stop()
        {
            if (m_OnComplete != null)
            {
                m_OnComplete();
            }

            IsRuning = false;

            //把自己从定时器链表移除
            GameEntry.Time.RemoveTimeAction(this);
        }

        /// <summary>
        /// 每帧执行
        /// </summary>
        public void OnUpdate()
        {
            if (m_IsPause) return;
            
            if (Time.time > m_CurrRunTime+m_PauseTime + m_DelayTime)
            {
                GameEntry.LogError("当程序执行到这里的时候，表明已经第一次过了延迟时间");
                IsRuning = true;
                m_CurrRunTime = Time.time;
                m_PauseTime=0;
                if (m_OnStar != null)
                {
                    m_OnStar();
                }
            }

            if (!IsRuning) return;

            if (Time.time > m_CurrRunTime + m_PauseTime)
            {
                m_CurrRunTime = Time.time + m_Interval;
                m_PauseTime = 0;
                //以下代码 间隔m_Interval 时间 执行一次
                if (m_OnUpdate != null)
                {
                    m_OnUpdate(m_Loop - m_CurrLoop);
                }

                if (m_Loop > -1)
                {
                    m_CurrLoop++;
                    if (m_CurrLoop >= m_Loop)
                    {
                        Stop();
                    }
                }
            }
        }
    }
}