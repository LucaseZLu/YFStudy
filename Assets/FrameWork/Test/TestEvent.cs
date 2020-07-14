using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TestEvent : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        GameEntry.Event.CommonEvent.AddEventListener(CommonEventId.RegComplete,OnRegComplete);
    }

    private void OnRegComplete(object userdata)
    {
        Debug.Log(userdata);
    }

    private void OnDestroy()
    {
        GameEntry.Event.CommonEvent.RemoveEventListener(CommonEventId.RegComplete,OnRegComplete);
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyUp(KeyCode.A))
        {
            GameEntry.Event.CommonEvent.Dispatch(CommonEventId.RegComplete,123);
        }
    }
}
