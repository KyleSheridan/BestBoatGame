using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class StatUp : Drops
{
    //enum for different stats
    public enum Stats
    {
        speed,
        health,
        damage
    }

    public Stats statType;      //changable in editor

    // Update is called once per frame
    void Update()
    {
        Rotate();       //rotate slowly
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            //if collide with player increase stat based on enum
            if(statType == Stats.speed)
            {
                PlayerStats.stats.SpeedUp(1);
            }
            if (statType == Stats.health)
            {
                PlayerStats.stats.HealthUp(1);
            }
            if (statType == Stats.damage)
            {
                PlayerStats.stats.DamageUp(1);
            }

            Destroy(gameObject);
        }
    }
}
