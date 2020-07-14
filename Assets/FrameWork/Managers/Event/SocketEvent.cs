using System;
using System.Collections.Generic;

public class SocketEvent:IDisposable
{
    public delegate void OnActionHandler(byte[] buffer);
    public Dictionary<ushort,List<OnActionHandler>> dic=new Dictionary<ushort, List<OnActionHandler>>();

    public void AddEventListener(ushort key, OnActionHandler handler)
    {
        if (dic.ContainsKey(key))
        {
            dic[key].Add(handler);
        }else
        {
            List<OnActionHandler> lstHandlers = new List<OnActionHandler> {handler};
            dic[key] = lstHandlers;
        }
    }

    public void RemoveEventListener(ushort key, OnActionHandler handler)
    {
        if (dic.ContainsKey(key))
        {
            List<OnActionHandler> lstHandler = dic[key];
            lstHandler.Remove(handler);
            if (lstHandler.Count == 0)
            {
                dic.Remove(key);
            }
        }
    }

    public void Dispatch(ushort key, byte[] buffer)
    {
        if (dic.ContainsKey(key))
        {
            List<OnActionHandler> lstHandler = dic[key];
            if (lstHandler != null && lstHandler.Count > 0)
            {
                for (int i = 0; i < lstHandler.Count; i++)
                {
                    if (lstHandler[i] != null&&lstHandler[i].Target!=null)
                    {
                        lstHandler[i](buffer);
                    }
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
        dic.Clear();
    }
    
}