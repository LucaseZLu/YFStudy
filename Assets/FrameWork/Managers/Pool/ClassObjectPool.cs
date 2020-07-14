using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

/// <summary>
/// 类对象池
/// </summary>
public class ClassObjectPool : IDisposable
{
    /// <summary>
    /// 类对象在池中的常驻数量
    /// </summary>
    public Dictionary<int, byte> ClassObjectCount
    {
        get;
        private set;
    }
    
    /// <summary>
    /// 类对象池字典
    /// </summary>
    private Dictionary<int, Queue<object>> m_ClassObjectPoolDic;
#if UNITY_EDITOR
    /// <summary>
    /// 在监视器面板上显示的信息
    /// </summary>
    public Dictionary<Type, int> InspectorDic = new Dictionary<Type, int>();
#endif


    public ClassObjectPool()
    {
        ClassObjectCount=new Dictionary<int, byte>();
        m_ClassObjectPoolDic = new Dictionary<int, Queue<object>>();
    }

    #region 设置类常驻数量

    /// <summary>
    /// 设置类常驻数量
    /// </summary>
    /// <param name="count"></param>
    /// <typeparam name="T"></typeparam>
    public void SetResideCount<T>(byte count)where T:class
    {
        int key = typeof(T).GetHashCode();
        ClassObjectCount[key] = count;
    }

    #endregion



    #region 取出一个对象

    /// <summary>
    /// 取出一个对象
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <returns></returns>
    public T Dequeue<T>() where T : class, new()
    {
        lock (m_ClassObjectPoolDic)
        {
            //先找到这个类型的哈希
            int key = typeof(T).GetHashCode();

            m_ClassObjectPoolDic.TryGetValue(key, out var queue);
            if (queue == null)
            {
                queue = new Queue<object>();
                m_ClassObjectPoolDic[key] = queue;
            }

            if (queue.Count > 0)
            {
                Debug.Log("对象存在，从池中获取：" + key);
                object obj = queue.Dequeue();
#if UNITY_EDITOR
                Type t = obj.GetType();
                if (InspectorDic.ContainsKey(t))
                {
                    InspectorDic[t]--;
                }
                else
                {
                    InspectorDic[t] = 0;
                }
#endif


                return (T) obj;
            }

            Debug.Log("对象不存在，实例化：" + key);
            return new T();
        }
    }

    #endregion

    #region 对象回池

    /// <summary>
    /// 对象回池
    /// </summary>
    /// <param name="obj"></param>
    public void Enqueue(object obj)
    {
        int key = obj.GetType().GetHashCode();
        Debug.Log("对象回池：" + key);
        lock (m_ClassObjectPoolDic)
        {
            m_ClassObjectPoolDic.TryGetValue(key, out var queue);

#if UNITY_EDITOR
            string className = obj.GetType().Name;
            Type t = obj.GetType();

            if (InspectorDic.ContainsKey(t))
            {
                InspectorDic[t]++;
            }
            else
            {
                InspectorDic[t] = 1;
            }
#endif

            if (queue != null)
            {
                queue.Enqueue(obj);
            }
        }
    }

    #endregion

    /// <summary>
    /// 释放类对象池
    /// </summary>
    public void Clear()
    {
        lock (m_ClassObjectPoolDic)
        {
            Debug.Log("释放对象池" + DateTime.Now);
            List<int> lst = new List<int>(m_ClassObjectPoolDic.Keys);
            int lisCount = lst.Count;
            int queueCount = 0; //队列的数量
            for (int i = 0; i < lisCount; i++)
            {
                int key = lst[i];
                //拿到队列
                Queue<object> queue = m_ClassObjectPoolDic[key];

#if UNITY_EDITOR
                Type t = null;
#endif

                queueCount = queue.Count;
            
                //用户释放的时候 判断
                byte resideCount = 0;
                ClassObjectCount.TryGetValue(key, out resideCount);
                while (queueCount > resideCount)
                {
                    //队列中有可释放的对象
                    queueCount--;
                    object obj = queue.Dequeue(); //从队列中取出一个 这个对象没有任何引用，就变成了野指针 等待GC回收

#if UNITY_EDITOR
                    t = obj.GetType();
                    InspectorDic[t]--;
#endif
                }

                if (queueCount == 0)
                {

#if UNITY_EDITOR
                    if (t != null)
                    {
                        InspectorDic.Remove(t);
                    }
                   
#endif
                }
            }

            //GC 整个项目中，有一处GC即可
            GC.Collect();
        }

    }

    public void Dispose()
    {
        m_ClassObjectPoolDic.Clear();
    }
}