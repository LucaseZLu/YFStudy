using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Text;
using YouYou;
public class TestPool : MonoBehaviour
{

    public Transform trans1;
    public Transform trans2;
    // Start is called before the first frame update
    void Start()
    {
        GameEntry.Pool.SetClassObjectResideCount<CusUserData>(3);
    }

    // Update is called once per frame
    void Update()
    {
//        if (Input.GetKeyUp(KeyCode.A))
//        {
//            CusUserData data = GameEntity.Pool.DequeueClassObject<CusUserData>();
//
//            CusUserDataAA data1 = GameEntity.Pool.DequeueClassObject<CusUserDataAA>();
//
//            CusUserDataBB data2 = GameEntity.Pool.DequeueClassObject<CusUserDataBB>();
//
//            CusUserDataCC data3 = GameEntity.Pool.DequeueClassObject<CusUserDataCC>();
//
//            StartCoroutine(EnqueueClassObject(data));
//            StartCoroutine(EnqueueClassObject(data1));
//            StartCoroutine(EnqueueClassObject(data2));
//            StartCoroutine(EnqueueClassObject(data3));
//            
//        }

        if (Input.GetKeyUp(KeyCode.B))
        {

            StartCoroutine(CreateObj());
        }
    }

    private IEnumerator CreateObj()
    {
        for (int i = 0; i < 20; i++)
        {
            yield return new WaitForSeconds(0.5f);
            GameEntry.Pool.GameObjectSpawn(1,trans1, (Transform instace) =>
            {
                instace.transform.localPosition+=new Vector3(0,0,i*2);
                instace.gameObject.SetActive(true);
                StartCoroutine(Despawn(1, instace));
            });
            GameEntry.Pool.GameObjectSpawn(2,trans2, (Transform instace) =>
            {
                instace.transform.localPosition+=new Vector3(0,5,i*2);
                instace.gameObject.SetActive(true);
                StartCoroutine(Despawn(2, instace));
            });
        }
    }

    private IEnumerator Despawn(byte poolId, Transform instance)
    {
        yield return new WaitForSeconds(20f);
        GameEntry.Pool.GameObjectDeSpawn(poolId,instance);
    }
    
//    private IEnumerator EnqueueClassObject(object obj)
//    {
//        yield return new WaitForSeconds(5);
//        GameEntity.Pool.EnqueueClassObject(obj);
//    }
}
