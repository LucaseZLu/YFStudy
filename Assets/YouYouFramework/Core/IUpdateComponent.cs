using System.Collections;
using System.Collections.Generic;
using UnityEngine;

namespace YouYou
{
    /// <summary>
    /// ��������ӿ�
    /// </summary>
    public interface IUpdateComponent
    {
        /// <summary>
        /// ���·���
        /// </summary>
        void OnUpdate();

        /// <summary>
        /// ʵ�����
        /// </summary>
        int InstanceId { get; }
    }
}