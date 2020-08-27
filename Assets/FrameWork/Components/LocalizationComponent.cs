using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace YouYou
{
    public class LocalizationComponent : YouYouBaseComponent
    {
        [SerializeField]
        private YouYouLanguage m_CurrLanguage;
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
            m_LocalizationManager=new LocalizationManager();

#if !UNITY_EDITOR
            Init();
#endif
            
        }

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

            //CurrLanguage = YouYouLanguage.English;
        }

        public string GetString(string key, params object[] args)
        {
            return m_LocalizationManager.GetString(key, args);
        }

        public override void Shutdown()
        {
            
        }
    }

    public enum YouYouLanguage
    {
        Chinese,
        English
    }
}
