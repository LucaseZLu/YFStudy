using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIComponent : YouYouBaseComponent,IUpdateComponent
{
    protected override void OnAwake()
    {
        base.OnAwake();
        GameEntry.RegisterUpdateComponent(this );
    }

    public void OnUpdate()
    {
     //xxxx    
    }
    public override void Shutdown()
    {
    }
}
