using System;
using System.Collections;
using UnityEngine;
using YouYou;

public class TestProcedure : MonoBehaviour
{
    // private void Start()
    // {
    //         VarInt a = VarInt.Alloc(10);
    //         int x = a;
    //
    //         StartCoroutine(Test1(a));
    //         
    //        
    // }
    //
    // private IEnumerator Test1(VarInt a)
    // { 
    //         // a.Retain();
    //         yield return new WaitForSeconds(5);
    //         Debug.Log("a="+a.ToString()); 
    //         a.Release();
    // }

    private void Update()
    {
        // if (Input.GetKeyUp(KeyCode.A))
        // {
        //     Debug.Log("当前流程" + GameEntry.Procedure.CurProcedure);
        // }
        //
        // if (Input.GetKeyUp(KeyCode.B))
        // {
        //     GameEntry.Procedure.SetData("code", 12);
        //     GameEntry.Procedure.SetData("name", "游戏");
        //     GameEntry.Procedure.ChangeState(ProcedureState.CheckVersion);
        // }
        //
        // if (Input.GetKeyUp(KeyCode.C))
        // {
        //     GameEntry.Procedure.ChangeState(ProcedureState.EnterGame);
        // }
        
        if (Input.GetKeyUp(KeyCode.A))
        {
            GameEntry.Procedure.ChangeState(ProcedureState.Preload);
        }
    }
}