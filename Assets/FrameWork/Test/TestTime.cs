using System;
using UnityEngine;
public class TestTime:MonoBehaviour
{
    private void Update()
    {
        if (Input.GetKeyUp(KeyCode.A))
        {
            TimeAction action = GameEntity.Time.CreateTimeAction();
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