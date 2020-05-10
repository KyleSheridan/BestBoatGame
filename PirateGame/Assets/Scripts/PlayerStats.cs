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
