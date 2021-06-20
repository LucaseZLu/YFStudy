using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace YouYou
{
    public enum YouYouLanguage
    {
        /// <summary>
        /// ����
        /// </summary>
        Chinese = 0,
        /// <summary>
        /// Ӣ��
        /// </summary>
        English = 1
    }

    /// <summary>
    /// ���ػ����
    /// </summary>
    public class LocalizationComponent : YouYouBaseComponent
    {
        [SerializeField]
        private YouYouLanguage m_CurrLanguage;

        
        /// <summary>
        /// ��ǰ���ԣ�Ҫ�ͱ��ػ���������ֶ� һ�£�
        /// </summary>
        public YouYouLanguage CurrLanguage
        {
            get
            {
                return m_CurrLanguage;
            }
        }

        private LocalizationManager m_LocalizationManager;

        protected override void OnAwake()
        {
            base.OnAwake();
            m_LocalizationManager = new LocalizationManager();

#if !UNITY_EDITOR
            Init();
#endif
        }

        /// <summary>
        /// ��ʼ��
        /// </summary>
        private void Init()
        {
            switch (Application.systemLanguage)
            {
                default:
                case SystemLanguage.ChineseSimplified:
                case SystemLanguage.ChineseTraditional:
                case SystemLanguage.Chinese:
                    m_CurrLanguage = YouYouLanguage.Chinese;
                    break;
                case SystemLanguage.English:
                    m_CurrLanguage = YouYouLanguage.English;
                    break;
            }
        }

        /// <summary>
        /// ��ȡ���ػ��ı�����
        /// </summary>
        /// <param name="key"></param>
        /// <param name="args"></param>
        /// <returns></returns>
        public string GetString(string key, params object[] args)
        {
            return m_LocalizationManager.GetString(key, args);
        }

        public override void Shutdown()
        {

        }
    }
}