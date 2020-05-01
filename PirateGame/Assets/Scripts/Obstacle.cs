using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Obstacle : MonoBehaviour
{
    public float damage;        //damage dealt if collided with

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.tag == "Player")
        {
            //deal damage to player if collided with
            PlayerStats.stats.TakeDamage(damage);

            Destroy(gameObject);    //destroy so can only collide once
        }
    }
}
