using System;
using System.Collections.Generic;
using UnityEngine;

namespace YouYou
{
    /// <summary>
    /// 系统事件id(系统事件编号，采用4位1001(10表示模块 01表示编号))
    /// </summary>
    public class SysEventID
    {
        /// <summary>
        /// 加载表格完毕
        /// </summary>
        public const ushort LoadDataTableComplete= 1001;
        
        /// <summary>
        /// 加载单一表格完毕
        /// </summary>
        public const ushort LoadOneDataTableComplete= 1002;
    }
}
