using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace YouYou
{
    public abstract class YouYouBaseComponent : YouYouComponent
    {
        protected override void OnAwake()
        {
            base.OnAwake();

            //���Լ������������б�
            GameEntry.RegisterBaseComponent(this);
        }
    }
}