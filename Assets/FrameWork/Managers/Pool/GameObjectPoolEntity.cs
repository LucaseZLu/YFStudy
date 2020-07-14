using System.Collections;
using System.Collections.Generic;
using PathologicalGames;
using UnityEngine;

/// <summary>
/// 对象池实体
/// </summary>
[System.Serializable]
public class GameObjectPoolEntity
{

    /// <summary>
    /// 对象池编号
    /// </summary>
    public byte PoolId;
    /// <summary>
    /// 对象池名字
    /// </summary>
    public string PoolName;
    /// <summary>
    /// 是否开启缓存自动清理模式
    /// </summary>
    public bool CullDespawned;
    /// <summary>
    /// 缓存自动清理，但是保留几个不清理
    /// </summary>
    public int CullAbove;
    /// <summary>
    /// 几秒清理一次
    /// </summary>
    public int CullDelay;
    /// <summary>
    /// 每次清理几个
    /// </summary>
    public int CullMaxPerPass;

    /// <summary>
    /// 对应游戏物体的对象池
    /// </summary>
    public SpawnPool Pool;

}
