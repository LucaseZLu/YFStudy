﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DataTableComponent : YouYouBaseComponent
{
    /// <summary>
    /// 表格管理器
    /// </summary>
    public DataTableManager DataTableManager
    {
        get;
        private set;
    }

    protected override void OnAwake()
    {
        base.OnAwake();
        DataTableManager=new DataTableManager();
    }

    public override void Shutdown()
    {
        DataTableManager.Clear();
    }
    
    public void LoadDataTableAsync()
    {
        DataTableManager.LoadDataTableAsync();
    }
}
