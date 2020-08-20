using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace YouYou
{
    public class HttpComponent : YouYouBaseComponent
    {
        [SerializeField]
        [Header("正式账号服Url")]
        private string m_WebAccountUrl = "";
        
        [SerializeField]
        [Header("测试服账号服Url")]
        private string m_TestWebAccountUrl = "";
        
        [SerializeField]
        [Header("测试服账号服Url")]
        private bool m_IsTest;

        public string RealWebAccountUrl
        {
            get
            {
                return m_IsTest ? m_TestWebAccountUrl : m_WebAccountUrl;
            }
        }
        
        private HttpManager m_HttpManager;

        protected override void OnAwake()
        {
            base.OnAwake();
            m_HttpManager=new HttpManager();
        }

        public override void Shutdown()
        {

        }
        public void SendData(string url, NetWorkSendDataCallBack callBack, bool isPost = false,
            Dictionary<string, object> dic = null)
        {
            m_HttpManager.SendData(url,callBack,isPost,dic);
        }
    
    }
}

