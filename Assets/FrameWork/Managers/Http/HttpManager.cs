using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using YouYou;

public class HttpManager : ManagerBase
{
    /// <summary>
    /// 发送Http数据
    /// </summary>
    /// <param name="url"></param>
    /// <param name="callBack"></param>
    /// <param name="isPost"></param>
    /// <param name="json"></param>
    public void SendData(string url, NetWorkSendDataCallBack callBack, bool isPost = false,
        Dictionary<string, object> dic = null)
    {
        Debug.Log("冲池中获取Http访问器");
        HttpRoutine http = GameEntry.Pool.DequeueClassObject<HttpRoutine>();
        http.SendData(url,callBack,isPost,dic);
        
    }
}
