using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using YouYou;

public class UIManager : ManagerBase
{
   /// <summary>
   /// 已经打开的UI列表
   /// </summary>
   private LinkedList<UIFormBase> m_OpenUIFormList;

   public UIManager()
   {
      m_OpenUIFormList=new LinkedList<UIFormBase>();
   }
   
   /// <summary>
   /// 打开UI窗体
   /// </summary>
   /// <param name="uiFormId"></param>
   /// <param name="userData"></param>
   internal void OpenUIForm(int uiFormId, object userData = null)
   {
      if (IsExists(uiFormId))
      {
         return;
      }
      
      //1.读表
      Sys_UIFormEntity entity = GameEntry.DataTable.DataTableManager.Sys_UIFormDBModel.Get(uiFormId);
      if (entity == null)
      {
         Debug.LogError(uiFormId+"对应的UI窗体不存在");
         return;
      }

#if UNITY_EDITOR

      UIFormBase formBase = GameEntry.UI.Dequeue(uiFormId);
      if (formBase == null)
      {
         string path = $"Assets/Download/UI/{entity.AssetPath_Chinese}.prefab";
      
         Object obj = UnityEditor.AssetDatabase.LoadAssetAtPath<GameObject>(path);
      
         GameObject uiObj=Object.Instantiate(obj, GameEntry.UI.GetUIGroup(entity.UIGroupId).Group, true) as GameObject;
         if (uiObj != null)
         {
            uiObj.transform.localPosition = Vector3.zero;
            uiObj.transform.localScale = Vector3.one;
         }

         formBase = uiObj.GetComponent<UIFormBase>();
         formBase.Init(uiFormId,entity.UIGroupId,entity.DisableUILayer==1,entity.IsLock==1,userData);

      }
      else
      {
         formBase.gameObject.SetActive(true);
         formBase.Open(userData,false);
      }
      
      m_OpenUIFormList.AddLast(formBase);


#endif

   }

   /// <summary>
   /// 检查UI是否已经打开
   /// </summary>
   /// <param name="uiformId"></param>
   /// <returns></returns>
   public bool IsExists(int uiFormId)
   {
      for (LinkedListNode<UIFormBase> curr  = m_OpenUIFormList.First;curr!=null;curr=curr.Next)
      {
         if (curr.Value.UIFormId == uiFormId)
         {
            return true;
         }
      }
      return false;
   }

   /// <summary>
   /// 根据UIFormID关闭UI
   /// </summary>
   /// <param name="uiFormId"></param>
   internal void CloseUIForm(int uiFormId)
   {
      for (LinkedListNode<UIFormBase> curr  = m_OpenUIFormList.First;curr!=null;curr=curr.Next)
      {
         if (curr.Value.UIFormId == uiFormId)
         {
            CloseUIForm(curr.Value);
            break;
         }
      }
   }

   internal void CloseUIForm(UIFormBase formBase)
   {
      m_OpenUIFormList.Remove(formBase);
      formBase.ToClose();
   }
}
