﻿using System.Collections;
using System.Collections.Generic;
using System.Threading.Tasks;
using UnityEngine;
using YouYou;

public class DataTableManager : ManagerBase
{

   public DataTableManager()
   {
      InitDBModel();
   }

   /// <summary>
   /// 章表
   /// </summary>
   
   public LocalizationDBModel LocalizationDBModel{ get; private set; }
   public ChapterDBModel ChapterDbModel { get; private set; }
   public Sys_CodeDBModel Sys_CodeDBModel{ get; private set; }
   public Sys_EffectDBModel Sys_EffectDBModel{ get; private set; }
   public Sys_PrefabDBModel Sys_PrefabDBModel{ get; private set; }
   public Sys_SoundDBModel Sys_SoundDBModel{ get; private set; }
   public Sys_StorySoundDBModel Sys_StorySoundDBModel{ get; private set; }
   public Sys_UIFormDBModel Sys_UIFormDBModel{ get; private set; }
   

   /// <summary>
   /// 初始化DBModel
   /// </summary>
   private void InitDBModel()
   {
      //每个表都new
      LocalizationDBModel=new LocalizationDBModel();
      ChapterDbModel=new ChapterDBModel();
      Sys_CodeDBModel=new Sys_CodeDBModel();
      Sys_EffectDBModel=new Sys_EffectDBModel();
      Sys_PrefabDBModel=new Sys_PrefabDBModel();
      Sys_SoundDBModel=new Sys_SoundDBModel();
      Sys_StorySoundDBModel=new Sys_StorySoundDBModel();
      Sys_UIFormDBModel=new Sys_UIFormDBModel();
   }
   
   public void LoadDataTable()
   {
      LocalizationDBModel.LoadData();  
      ChapterDbModel.LoadData();
      Sys_CodeDBModel.LoadData();
      Sys_EffectDBModel.LoadData();
      Sys_PrefabDBModel.LoadData();
      Sys_SoundDBModel.LoadData();
      Sys_StorySoundDBModel.LoadData();
      Sys_UIFormDBModel.LoadData();
      
      //load 所以表加载完毕
      GameEntry.Event.CommonEvent.Dispatch(SysEventID.LoadDataTableComplete);
   }
   
   /// <summary>
   /// 异步加载表格
   /// </summary>
   public void LoadDataTableAsync()
   {
      Task.Factory.StartNew(LoadDataTable);
   }

   public void Clear()
   {
      //每个表都Clear
      LocalizationDBModel.Clear();
      ChapterDbModel.Clear();
      Sys_CodeDBModel.Clear();
      Sys_EffectDBModel.Clear();
      Sys_PrefabDBModel.Clear();
      Sys_SoundDBModel.Clear();
      Sys_StorySoundDBModel.Clear();
      Sys_UIFormDBModel.Clear();
   }
}
