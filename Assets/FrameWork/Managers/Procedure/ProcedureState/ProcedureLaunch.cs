//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：
//备    注：
//===================================================
using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace YouYou
{
    /// <summary>
    /// 启动流程
    /// </summary>
    public class ProcedureLaunch : ProcedureBase
    {
        public override void OnEnter()
        {
            base.OnEnter();
            Debug.Log("ProcedureLaunch OnEnter");
            
            //访问账号服务器
            // string url = GameEntry.Http.RealWebAccountUrl + "/api/init";
            //
            // Dictionary<string,object>dic=GameEntry.Pool.DequeueClassObject<Dictionary<string,object>>();
            // dic.Clear();
            // dic["ChannelId"] = 0;
            // dic["InnerVersion"] = 1001;
            // GameEntry.Http.SendData(url,OnWebAccountInit,true,dic);

        }

        private void OnWebAccountInit(HttpCallBackArgs args)
        {
            Debug.Log("haserror="+args.HasError);
            Debug.Log("Value="+args.Value);
        }


        public override void OnUpdate()
        {
            base.OnUpdate();
        }

        public override void OnLeave()
        {
            base.OnLeave();
            Debug.Log("ProcedureLaunch OnLeaves");
            
        }

        public override void OnDestroy()
        {
            base.OnDestroy();
        }
    }
}