using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Text;
using UnityEditor;
using UnityEngine;
using YouYou;

public class Menu
{
#region CreateLuaView 生成LuaView和LuaCtrl脚本
    [MenuItem("悠游工具/生成LuaView脚本(CreateLuaViewAndLuaCtrl)")]
    public static void CreateLuaView()
    {
        if (Selection.transforms.Length == 0)
        {
            return;
        }

        Transform trans = Selection.transforms[0];

        LuaForm luaForm = trans.GetComponent<LuaForm>();
        if (luaForm == null)
        {
            Debug.LogError("该UI上没有LuaForm脚本");
            return;
        }

        string viewName = trans.gameObject.name;

        LuaCom[] luaComs = luaForm.LuaComs;

        int len = luaComs.Length;

        StringBuilder sbr = new StringBuilder();
        sbr.AppendFormat("");
        sbr.AppendFormat("{0}View = {{ }};\n", viewName);
        sbr.AppendFormat("local this = {0}View;\n", viewName);
        sbr.AppendFormat("\n");
        for (int i = 0; i < len; i++)
        {
            LuaCom com = luaComs[i];
            sbr.AppendFormat("local {0}Index = {1};\n", com.Name, i);
        }
        sbr.AppendFormat("\n");
        sbr.AppendFormat("function {0}View.OnInit(transform, userData)\n", viewName);
        sbr.AppendFormat("    this.InitView(transform);\n");
        sbr.AppendFormat("    {0}Ctrl.OnInit(userData);\n", viewName);
        sbr.AppendFormat("end\n");
        sbr.AppendFormat("\n");
        sbr.AppendFormat("function {0}View.InitView(transform)\n", viewName);
        sbr.AppendFormat("    this.LuaForm = transform:GetComponent(typeof(CS.YouYou.LuaForm));\n");
        for (int i = 0; i < len; i++)
        {
            LuaCom com = luaComs[i];
            sbr.AppendFormat("    this.{0} = this.LuaForm:GetLuaComs({0}Index);\n", com.Name);
        }
        sbr.AppendFormat("end\n");
        sbr.AppendFormat("\n");
        sbr.AppendFormat("function {0}View.OnOpen(userData)\n", viewName);
        sbr.AppendFormat("    {0}Ctrl.OnOpen(userData);\n", viewName);
        sbr.AppendFormat("end\n");
        sbr.AppendFormat("\n");
        sbr.AppendFormat("function {0}View.OnClose()\n", viewName);
        sbr.AppendFormat("    {0}Ctrl.OnClose();\n", viewName);
        sbr.AppendFormat("end\n");
        sbr.AppendFormat("\n");
        sbr.AppendFormat("function {0}View.OnBeforDestroy()\n", viewName);
        sbr.AppendFormat("    {0}Ctrl.OnBeforDestroy();\n", viewName);
        sbr.AppendFormat("    this.LuaForm = nil;\n");
        for (int i = 0; i < len; i++)
        {
            LuaCom com = luaComs[i];
            sbr.AppendFormat("    this.{0} = nil;\n", com.Name);
        }
        sbr.AppendFormat("end");

        string path = Application.dataPath + "/Download/xLuaLogic/Modules/Temp/" + viewName + "View.bytes";

        using (FileStream fs = new FileStream(path, FileMode.Create))
        {
            using (StreamWriter sw = new StreamWriter(fs))
            {
                sw.Write(sbr.ToString());
            }
        }

        //===================生成控制器
        sbr.Clear();
        sbr.AppendFormat("{0}Ctrl = {{ }};\n", viewName);
        sbr.AppendFormat("\n");
        sbr.AppendFormat("local this = {0}Ctrl;\n", viewName);
        sbr.AppendFormat("\n");
        sbr.AppendFormat("function {0}Ctrl.OnInit(userData)\n", viewName);
        sbr.AppendFormat("\n");
        sbr.AppendFormat("end\n");
        sbr.AppendFormat("\n");
        sbr.AppendFormat("function {0}Ctrl.OnOpen(userData)\n", viewName);
        sbr.AppendFormat("\n");
        sbr.AppendFormat("end\n");
        sbr.AppendFormat("\n");
        sbr.AppendFormat("function {0}Ctrl.OnClose()\n", viewName);
        sbr.AppendFormat("\n");
        sbr.AppendFormat("end\n");
        sbr.AppendFormat("\n");
        sbr.AppendFormat("function {0}Ctrl.OnBeforDestroy()\n", viewName);
        sbr.AppendFormat("\n");
        sbr.AppendFormat("end");
        path = Application.dataPath + "/Download/xLuaLogic/Modules/Temp/" + viewName + "Ctrl.bytes";

        using (FileStream fs = new FileStream(path, FileMode.Create))
        {
            using (StreamWriter sw = new StreamWriter(fs))
            {
                sw.Write(sbr.ToString());
            }
        }
    }
    #endregion
}
