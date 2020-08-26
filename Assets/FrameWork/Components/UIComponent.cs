using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

namespace YouYou
{
    public class UIComponent : YouYouBaseComponent,IUpdateComponent
    {
        [Header("标准分辨率宽度")]
        [SerializeField]
        private int m_StandardWidth = 1280;

        [Header("标准分辨率高度")]
        [SerializeField]
        private int m_StandarcHeight = 720;
    
        [Header("UI摄像机")]
        [SerializeField]
        public Camera UiCamera;
        
        [Header("根画布")]
        [SerializeField]
        private Canvas m_UIRootCanvas;
    
        [Header("根画布的缩放")]
        [SerializeField]
        private CanvasScaler m_UIRootCanvasScaler;
        
        [Header("UI分组")]
        [SerializeField]
        private UIGroup[] UiGroups;

        private Dictionary<byte, UIGroup> m_UiGroupsDic;

        /// <summary>
        /// 标准分辨率比值
        /// </summary>
        private float m_StandardScreen = 0;
        
        /// <summary>
        /// 当前分辨率比值
        /// </summary>
        private float m_CurrScreen = 0;

        private UIManager m_UiManager;

        private UILayer m_UILayer;

        private UIPool m_UiPool;

        [Header("释放间隔(秒)")][SerializeField]
        private float m_ClearInterval = 120;

        /// <summary>
        /// UI 回池后过期时间
        /// </summary>
        public float UIExpire=120f;

        /// <summary>
        /// UI对象池中最大的数量
        /// </summary>
        public int UIPoolMaxCount=5;

        /// <summary>
        /// 下次运行时间
        /// </summary>
        private float m_NextRunTime = 0f;
        
        
        protected override void OnAwake()
        {
            base.OnAwake();
            
            m_UiGroupsDic=new Dictionary<byte, UIGroup>();
            
            GameEntry.RegisterUpdateComponent(this);

            m_StandardScreen = m_StandardWidth / (float) m_StandarcHeight;
            m_CurrScreen = Screen.width / (float) Screen.height;
            NormalFormCanvasScaler();
            int len = UiGroups.Length;
            for (int i = 0; i < len; i++)
            {
                UIGroup group = UiGroups[i];
                m_UiGroupsDic[group.Id] = group;
            }
            
            m_UiManager=new UIManager();
            m_UILayer=new UILayer();
            m_UILayer.Init(UiGroups);
            
            m_UiPool=new UIPool();
        }
        
        /// <summary>
        /// 自动适配缩放
        /// </summary>
        public void AutoCanvasScaler()
        {
            #region UI设配

            if (m_CurrScreen >= m_StandardScreen)
            {
                //设置成0
                m_UIRootCanvasScaler.matchWidthOrHeight = 0;
            }
            else
            {
                m_UIRootCanvasScaler.matchWidthOrHeight = m_StandardScreen - m_CurrScreen;
            }

            #endregion
        }
        
        /// <summary>
        /// FullForm适配缩放
        /// </summary>
        public void FullFormCanvasScaler()
        {
            m_UIRootCanvasScaler.matchWidthOrHeight = 1;
        }
        
        /// <summary>
        /// 普通窗口适配缩放
        /// </summary>
        public void NormalFormCanvasScaler()
        {
            m_UIRootCanvasScaler.matchWidthOrHeight = (m_CurrScreen >= m_StandardScreen) ? 1 : 0;
        }
        
        /// <summary>
        /// 根据UI分组编号获取UI分组
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public UIGroup GetUIGroup(byte id)
        {
            UIGroup group = null;
            m_UiGroupsDic.TryGetValue(id,out group);
            return group;
        }

        public void OpenUIForm(int uiFormId, object userData = null)
        {
            m_UiPool.CheckByOPenUI();
            m_UiManager.OpenUIForm(uiFormId,userData);
        }

        
        internal void CloseUIForm(int uiFormId)
        {
            m_UiManager.CloseUIForm(uiFormId);
        }
        
        internal void CloseUIForm(UIFormBase formBase)
        {
            m_UiManager.CloseUIForm(formBase);
        }

        /// <summary>
        /// 设置层级
        /// </summary>
        /// <param name="formBase"></param>
        /// <param name="isAdd"></param>
        public void SetSortingOrder(UIFormBase formBase, bool isAdd)
        {
            m_UILayer.SetSortingOrder(formBase,isAdd);
        }
        
        /// <summary>
        /// 从UI对象池中获取UI
        /// </summary>
        /// <param name="uiformId"></param>
        /// <returns></returns>
        internal UIFormBase Dequeue( int uiformId )
        {
            return m_UiPool.Dequeue(uiformId);
        }
        
        /// <summary>
        /// ui回池
        /// </summary>
        /// <param name="form"></param>
        internal void Enqueue(UIFormBase form)
        {
            m_UiPool.Enqueue(form);
        }

        public void OnUpdate()
        {
            if (Time.time > m_NextRunTime + m_ClearInterval)
            {
                m_NextRunTime = Time.time;
                //释放UI对象
                m_UiPool.CheckClear();
            }
        }
        public override void Shutdown()
        {
        }
    }
}

