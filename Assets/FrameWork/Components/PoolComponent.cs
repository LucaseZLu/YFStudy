using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PoolComponent : YouYouBaseComponent,IUpdateComponent
{

    public PoolManager PoolManager { get; private set; }
    protected override void OnAwake()
    {
        base.OnAwake();
        PoolManager=new PoolManager();
        
        GameEntity.RegisterUpdateComponent(this);
        m_NextRunTime = Time.time;
        InitGameObjectPool();
    }

    #region 设置类常驻数量

    /// <summary>
    /// 设置类常驻数量
    /// </summary>
    /// <param name="count"></param>
    /// <typeparam name="T"></typeparam>
    public void SetClassObjectResideCount<T>(byte count)where T:class
    {
        
        PoolManager.ClassObjectPool.SetResideCount<T>(count);
    }

    #endregion
    
    #region 取出一个对象

    /// <summary>
    /// 取出一个对象
    /// </summary>
    /// <typeparam name="T"></typeparam>
    /// <returns></returns>
    public T DequeueClassObject<T>() where T : class, new()
    {
        return PoolManager.ClassObjectPool.Dequeue<T>();
    }

    #endregion

    #region 对象回池

    /// <summary>
    /// 对象回池
    /// </summary>
    /// <param name="obj"></param>
    public void EnqueueClassObject(object obj)
    {
        PoolManager.ClassObjectPool.Enqueue(obj);
    }

    #endregion
    public override void Shutdown()
    {
        PoolManager.Dispose();
    }
    
    /// <summary>
    /// 释放时间
    /// </summary>
    [SerializeField]
    public int m_ClearInterval = 30;

    /// <summary>
    /// 下次运行时间
    /// </summary>
    private float m_NextRunTime = 0f;
    
    public void OnUpdate()
    {
        if (Time.time > m_NextRunTime + m_ClearInterval)
        {
            //该释放了
            m_NextRunTime = Time.time;
            PoolManager.ClearClassObjectPool();//释放类对象池
        }
    }

    #region 游戏物体对象池
    
    /// <summary>
    /// 对象池的分组
    /// </summary>
    [SerializeField]
    private GameObjectPoolEntity[] m_GameObjectPoolGroups;

    /// <summary>
    /// 初始化游戏物体对象池
    /// </summary>
    public void InitGameObjectPool()
    {
        StartCoroutine(PoolManager.GameObjectPool.Init(m_GameObjectPoolGroups, transform));
    }
    
    
    /// <summary>
    /// 从对象池中获取对象
    /// </summary>
    /// <param name="poolId"></param>
    /// <param name="prefab"></param>
    /// <param name="onComplete"></param>
    public void GameObjectSpawn(byte poolId, Transform prefab, System.Action<Transform> onComplete)
    {
        PoolManager.GameObjectPool.Spawn(poolId,prefab,onComplete);
    }
    
    /// <summary>
    /// 对象回池
    /// </summary>
    /// <param name="poolId"></param>
    /// <param name="instance"></param>
    public void GameObjectDeSpawn(byte poolId, Transform instance)
    {
       PoolManager.GameObjectPool.DeSpawn(poolId,instance);
    }

    #endregion
    

    
    
}




































