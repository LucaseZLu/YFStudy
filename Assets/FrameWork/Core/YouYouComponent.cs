using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public  class YouYouComponent : MonoBehaviour
{
    private int m_InstanceId;
    private void Awake()
    {
       
        m_InstanceId = GetInstanceID();
        OnAwake();
    }
    
    private void Start()
    {
        OnStart();
    }

    private void OnDestroy()
    {
        BeforOnDestroy();
    }
    

    public int InstanceId => GetInstanceID();
    
    protected virtual void OnAwake() { }

    protected virtual void OnStart() { }

    protected virtual void BeforOnDestroy() { }

    
}
