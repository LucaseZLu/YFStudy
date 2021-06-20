using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace YouYou
{
    public class LocalizationManager : ManagerBase
    {
        /// <summary>
        /// ��ȡ���ػ��ı�����
        /// </summary>
        /// <param name="key"></param>
        /// <param name="args"></param>
        /// <returns></returns>
        public string GetString(string key, params object[] args)
        {
            string value = null;
            if (GameEntry.DataTable.DataTableManager.LocalizationDBModel.LocalizationDic.TryGetValue(key, out value))
            {
                return string.Format(value, args);
            }
            return value;
        }
    }
}