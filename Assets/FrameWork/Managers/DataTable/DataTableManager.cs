using System.Collections;
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
   public ChapterDBModel ChapterDbModel { get; private set; }
   

   /// <summary>
   /// 初始化DBModel
   /// </summary>
   private void InitDBModel()
   {
      //每个表都new
      ChapterDbModel=new ChapterDBModel();
   }
   
   public void LoadDataTable()
   {
      
      ChapterDbModel.LoadData();
      
      
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
      ChapterDbModel.Clear();
   }
}
