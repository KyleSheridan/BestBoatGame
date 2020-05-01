using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerStats : BoatStats
{
    public static Boat stats;       //struct with stats

    // Start is called before the first frame update
    void Start()
    {
        stats = GenerateStats(maxRandSpeed, maxRandHealth, maxRandDamage, maxRandFireRate);      //generate stats
    }

    // Update is called once per frame
    void Update()
    {
        //Preferably get rid of this (Its Debug stuff if you're marking my commenting)
        //  |
        //  |
        //  V

        if (Input.GetKeyDown(KeyCode.J))
        {
            Debug.Log("Speed: " + stats.SpeedStat + " Health: " + stats.MaxHealthStat + " Damage: " + stats.DamageStat);
        }
        if (Input.GetKeyDown(KeyCode.B))
        {
            stats.SpeedUp(1);
        }
        if (Input.GetKeyDown(KeyCode.N))
        {
            stats.HealthUp(1);
        }
        if (Input.GetKeyDown(KeyCode.M))
        {
            stats.DamageUp(1);
        }
        if (Input.GetKeyDown(KeyCode.P))
        {
            Debug.Log("Current health is: " + stats.Health);
        }
        if (Input.GetKeyDown(KeyCode.O))
        {
            Debug.Log(PlayerStats.stats.Health / (PlayerStats.stats.MaxHealthStat * 100));
        }
        //_________________
    }

    //GenerateStats function changed to give player min stats of 5 (see BoatStats script for original function)
    public override Boat GenerateStats(float maxSpeed, float maxHealth, float maxDamage, float maxFireRate)
    {
        float spd = Mathf.Ceil(Random.Range(5, maxSpeed));
        float hlth = Mathf.Ceil(Random.Range(5, maxHealth));
        float dmg = Mathf.Ceil(Random.Range(5, maxDamage));
        float fr = Mathf.Ceil(Random.Range(0, maxFireRate));

        return new Boat(spd, hlth, dmg, fr);
    }
}
