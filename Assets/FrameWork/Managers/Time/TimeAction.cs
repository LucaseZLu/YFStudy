using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TimeAction
{
   public bool IsRuning { get; private set; }
   /// <summary>
   /// 当前时间
   /// </summary>
   private float m_CurrRunTime;
   /// <summary>
   /// 当前的循环次数
   /// </summary>
   private int m_CurrLoop;

   /// <summary>
   /// 延迟时间
   /// </summary>
   private float m_DelayTime;

   /// <summary>
   /// 间隔
   /// </summary>
   private float m_Interval;

   /// <summary>
   /// 循环次数
   /// </summary>
   private int m_Loop;

   /// <summary>
   /// 开始运行
   /// </summary>
   private Action m_OnStart;

   /// <summary>
   /// 运行中 参数表示运行次数
   /// </summary>
   private Action<int> m_OnUpdate;

   /// <summary>
   /// 运行结束
   /// </summary>
   private Action m_OnComplete;

   /// <summary>
   /// 初始化
   /// </summary>
   /// <param name="delayTime">延迟时间</param>
   /// <param name="interval">间隔</param>
   /// <param name="loop">循环次数</param>
   /// <param name="OnStart">开始运行</param>
   /// <param name="OnUpdate">运行中</param>
   /// <param name="OnComplete">运行结束</param>
   /// <returns></returns>
   public TimeAction Init(float delayTime, float interval, int loop, Action OnStart, Action<int> OnUpdate,
      Action OnComplete)
   {
      m_DelayTime = delayTime;
      m_Loop = loop;
      m_Interval = interval;
      m_OnStart = OnStart;
      m_OnUpdate = OnUpdate;
      m_OnComplete = OnComplete;
      return this;
   }

   public void Run()
   {
      GameEntry.Time.RegisterTimeAction(this);
      //把自己加入时间管理器的列表中
      m_CurrRunTime = Time.time;
      
   }

   public void Pause()
   {
      IsRuning = false;
   }

   public void Stop()
   {
      if (m_OnComplete != null)
      {
         m_OnComplete();
      }
      IsRuning = false;
      
      GameEntry.Time.RemoveTimeAction(this);
   }

   
   public void OnUpdate()
   {
      if (!IsRuning && Time.time > m_CurrRunTime + m_DelayTime)
      {
         //过了延迟时间后开始执行
         IsRuning = true;
         m_CurrRunTime = Time.time;
         if (m_OnStart != null)
         {
            m_OnStart();
         }
      }

      if (!IsRuning) return;

      if (Time.time > m_CurrRunTime)
      {
         m_CurrRunTime = Time.time + m_Interval;
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
