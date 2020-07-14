using System;
using UnityEngine;

public class TestProcedure:MonoBehaviour
{
        private void Update()
        {
                if (Input.GetKeyUp(KeyCode.A))
                {
                        Debug.Log("当前流程"+GameEntity.Procedure.CurProcedure);
                }
                if (Input.GetKeyUp(KeyCode.B))
                {
                       GameEntity.Procedure.ChangeState(ProcedureState.CheckVersion);
                }
                if (Input.GetKeyUp(KeyCode.C))
                { 
                        GameEntity.Procedure.ChangeState(ProcedureState.EnterGame);
                }
        }
}