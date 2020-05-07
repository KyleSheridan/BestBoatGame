using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Heal : Drops
{
    public float healAmount;

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            PlayerStats.stats.TakeDamage(-healAmount);

            Destroy(gameObject);
        }
    }
}
