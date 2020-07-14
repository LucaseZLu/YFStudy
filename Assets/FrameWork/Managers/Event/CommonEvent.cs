using System;
using System.Collections.Generic;
using UnityEngine;

public class CommonEvent:IDisposable
{
    public delegate void OnActionHandler(object userData);
    public Dictionary<ushort,List<OnActionHandler>> dic=new Dictionary<ushort, List<OnActionHandler>>();

    public void AddEventListener(ushort key, OnActionHandler handler)
    {
        dic.TryGetValue(key, out var lstHandler);
        if (lstHandler == null)
        {
            lstHandler=new List<OnActionHandler>();
            dic[key] = lstHandler;
        }
        lstHandler.Add(handler);
        
    }

    public void RemoveEventListener(ushort key, OnActionHandler handler)
    {
        dic.TryGetValue(key, out var lstHandler);

        if (lstHandler != null)
        {
            lstHandler.Remove(handler);
            if (lstHandler.Count == 0)
            {
                dic.Remove(key);
            }
        }
       
    }

    public void Dispatch(ushort key, object userData)
    {
        dic.TryGetValue(key, out var lstHandler);

        if (lstHandler != null)
        {
            for (int i = 0,lstCount=lstHandler.Count; i < lstCount; i++)
            {
                OnActionHandler handler = lstHandler[i];
                if (handler != null&&handler.Target!=null)
                {
                    handler(userData);
                }
            }
        }
    }

    public void Dispatch(ushort key)
    {
        if (key <= 0) throw new ArgumentOutOfRangeException(nameof(key));
        Dispatch(key,null);
    }

    public void Dispose()
    {
        Debug.Log("释放");
        dic.Clear();
    }
}