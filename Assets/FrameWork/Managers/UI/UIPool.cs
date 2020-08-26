﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace YouYou
{
    public class UIPool
    {
        /// <summary>
        /// 对象池中的列表
        /// </summary>
        private LinkedList<UIFormBase> m_UiFormBases;

        public UIPool()
        {
            m_UiFormBases=new LinkedList<UIFormBase>();
        }
        
        /// <summary>
        /// 从UI对象池中获取UI
        /// </summary>
        /// <param name="uiformId"></param>
        /// <returns></returns>
        internal UIFormBase Dequeue( int uiformId )
        {
            for (LinkedListNode<UIFormBase> curr=m_UiFormBases.First; curr!=null; curr=curr.Next)
            {
                if (curr.Value.UIFormId == uiformId)
                {
                    m_UiFormBases.Remove(curr.Value);
                    return curr.Value;
                }
            }
            
            return null;
        }
        
        /// <summary>
        /// ui回池
        /// </summary>
        /// <param name="form"></param>
        internal void Enqueue(UIFormBase form)
        {
            form.gameObject.SetActive(false);
            m_UiFormBases.AddLast(form);
        }

        /// <summary>
        /// 检查是否可以释放
        /// </summary>
        internal void CheckClear()
        {
            for (LinkedListNode<UIFormBase> curr = m_UiFormBases.First; curr != null;)
            {
                if (!curr.Value.IsLock&&Time.time>(curr.Value.CloseTime+GameEntry.UI.UIExpire))
                {
                    //销毁UI
                    Object.Destroy(curr.Value.gameObject);

                    LinkedListNode<UIFormBase> next = curr.Next;
                    m_UiFormBases.Remove(curr.Value);
                    curr = next;
                }
                else
                {
                    curr = curr.Next;
                }
            }
        }

        internal void CheckByOPenUI()
        {
            if (m_UiFormBases.Count <= GameEntry.UI.UIPoolMaxCount) return;
            
            for (LinkedListNode<UIFormBase> curr = m_UiFormBases.First; curr != null;)
            {
                if (m_UiFormBases.Count == GameEntry.UI.UIPoolMaxCount+1)
                {
                    //如果池中的数量再指定数量以内，则不再继续销毁
                    break;
                    
                }
                
                if (!curr.Value.IsLock)
                {
                    //销毁UI
                    Object.Destroy(curr.Value.gameObject);

                    LinkedListNode<UIFormBase> next = curr.Next;
                    m_UiFormBases.Remove(curr.Value);
                    curr = next;
                }
                else
                {
                    curr = curr.Next;
                }
            }
        }
    }
}
