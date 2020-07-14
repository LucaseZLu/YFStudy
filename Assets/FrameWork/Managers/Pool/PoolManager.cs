using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PoolManager : ManagerBase,IDisposable
{
   public ClassObjectPool ClassObjectPool { get; }

   public GameObjectPool GameObjectPool { get; }

   public PoolManager()
   {
      ClassObjectPool=new ClassObjectPool(); 
      GameObjectPool=new GameObjectPool();
   }

   /// <summary>
   /// 释放类对象吃
   /// </summary>
   public void ClearClassObjectPool()
   {
      ClassObjectPool.Clear();
   }
   
   public void Dispose()
   {
      ClassObjectPool.Dispose();
      GameObjectPool.Dispose();
   }
}
