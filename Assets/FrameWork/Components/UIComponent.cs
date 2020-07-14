using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class UIComponent : YouYouBaseComponent,IUpdateComponent
{
    protected override void OnAwake()
    {
        base.OnAwake();
        GameEntity.RegisterUpdateComponent(this );
    }

    public void OnUpdate()
    {
        
    }
    public override void Shutdown()
    {
    }
}
