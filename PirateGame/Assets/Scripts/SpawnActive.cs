using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SpawnActive : MonoBehaviour
{
    public bool spawnable = true;       //turn spawn point on or off

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnTriggerStay(Collider other)
    {
        if(other.gameObject.tag == "Player" || other.gameObject.tag == "Enemy")
        {
            spawnable = false;          //if enemy too close to spawn point turn turn spawn point off
        }
    }

    private void OnTriggerExit(Collider other)
    {
        spawnable = true;               //if player too clost to spwan point turn spawn point off
    }
}
