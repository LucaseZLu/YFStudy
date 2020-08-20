using System;
using UnityEngine;
using YouYou;

public class TestTime:MonoBehaviour
{
    private void Update()
    {
        if (Input.GetKeyUp(KeyCode.A))
        {
            TimeAction action = GameEntry.Time.CreateTimeAction();
            action.Init(1,1,8, () =>
                {
                    Debug.Log("定时器开始执行");
                },
                (x) =>
                {
                    Debug.Log("定时器执行"+x);
                },
                () =>
                {
                    Debug.Log("定时器执行完毕");
                }).Run();

        }
    }
}