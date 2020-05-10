using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Heal : Drops
{
    public float healAmount;        //amount to heal player

    private void Update()
    {
        Rotate();       //rotate slowley
    }
    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            //if collides with player heal player
            PlayerStats.stats.TakeDamage(-healAmount);

            Destroy(gameObject);        //destory object
        }
    }
}
