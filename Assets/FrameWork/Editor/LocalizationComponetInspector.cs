﻿using System;
using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

namespace YouYou
{
    [CustomEditor(typeof(LocalizationComponent),true)]
    public class LocalizationComponetInspector : Editor
    {
        private SerializedProperty m_CurrLanguage = null;

        public override void OnInspectorGUI()
        {
            serializedObject.Update();
            
            EditorGUILayout.PropertyField(m_CurrLanguage);
            serializedObject.ApplyModifiedProperties();
            
        }

        private void OnEnable()
        {
            m_CurrLanguage = serializedObject.FindProperty("m_CurrLanguage");
            serializedObject.ApplyModifiedProperties();
        }
    }
}


