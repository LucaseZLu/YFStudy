using System;
using UnityEngine;
using YouYou;

public class TestUI:MonoBehaviour
{
    private void Update()
    {
        if (Input.GetKeyUp(KeyCode.B))
        {
            GameEntry.UI.OpenUIForm(UIFormId.UI_Task);
        }else if (Input.GetKeyUp(KeyCode.C))
        {
            GameEntry.UI.CloseUIForm(UIFormId.UI_Task);
        }
    }
}