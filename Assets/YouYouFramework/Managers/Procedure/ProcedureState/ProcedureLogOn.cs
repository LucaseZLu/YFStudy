//===================================================
//作    者：边涯  http://www.u3dol.com
//创建时间：
//备    注：
//===================================================
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace YouYou
{
    /// <summary>
    /// 登录流程
    /// </summary>
    public class ProcedureLogOn : ProcedureBase
    {
        public override void OnEnter()
        {
            base.OnEnter();
            GameEntry.Log(LogCategory.Procedure, "OnEnter ProcedureLogOn");

            GameEntry.Scene.LoadScene(1, onComplete: () =>
            {
                GameEntry.Event.CommonEvent.Dispatch(SysEventId.CloseCheckVersionUI);
            });
        }

        private GameObject m_RoleObj;
        private void LoadRole()
        {
            GameEntry.Resource.ResourceLoaderManager.LoadMainAsset(AssetCategory.RolePrefab, string.Format("Assets/Download/Role/RolePrefab/Player/Tianshan_001/Zy_tianshan_002_yxt/Zy_tianshan_002_yxt.prefab"), (ResourceEntity resourceEntity) =>
            {
                Debug.LogError("加载角色完毕");

                m_RoleObj = Object.Instantiate(resourceEntity.Target as GameObject);
                m_RoleObj.transform.position = new Vector3(166.51f, 1.454f, 170.1f);
            });
        }

        public override void OnUpdate()
        {
            base.OnUpdate();

            if (Input.GetKeyUp(KeyCode.D))
            {
                LoadRole();
            }
            if (Input.GetKeyUp(KeyCode.E))
            {
                Object.Destroy(m_RoleObj);
                GameEntry.Resource.ResourceLoaderManager.UnloadGameObject(m_RoleObj);
            }
        }

        public override void OnLeave()
        {
            base.OnLeave();
            GameEntry.Log(LogCategory.Procedure, "OnLeave ProcedureLogOn");
        }
    }
}