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
    /// 预加载流程
    /// </summary>
    public class ProcedurePreload : ProcedureBase
    {
        public override void OnEnter()
        {
            base.OnEnter();
            GameEntry.Event.CommonEvent.AddEventListener(SysEventID.LoadDataTableComplete,OnLoadDataTableComplete);
            GameEntry.Event.CommonEvent.AddEventListener(SysEventID.LoadOneDataTableComplete,OnLoadOneDataTableComplete);
            GameEntry.DataTable.LoadDataTableAsync();
        }




        public override void OnUpdate()
        {
            base.OnUpdate();

        }

        public override void OnLeave()
        {
            base.OnLeave();
            GameEntry.Event.CommonEvent.RemoveEventListener(SysEventID.LoadDataTableComplete,OnLoadDataTableComplete);
            GameEntry.Event.CommonEvent.RemoveEventListener(SysEventID.LoadOneDataTableComplete,OnLoadOneDataTableComplete);
        }
        /// <summary>
        /// 加载所有表完毕
        /// </summary>
        /// <param name="userdata"></param>
        private void OnLoadDataTableComplete(object userdata)
        {
            Debug.Log($"加载所有表完毕");
        }

        private void OnLoadOneDataTableComplete(object userdata)
        {
            Debug.Log($"tableName={userdata}");
        }
    }
}