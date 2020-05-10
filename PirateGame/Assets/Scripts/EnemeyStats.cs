using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemeyStats : BoatStats
{
    public Boat stats;      //struct with stats
    public int maxDrops;    //max amount of items to drop

    private EnemyDrops ed;      //EnemyDrops component

    // Start is called before the first frame update
    void Start()
    {
        ed = GetComponent<EnemyDrops>();        //get EnemyDrops Component
        stats = GenerateStats(PlayerStats.stats.MaxStat, PlayerStats.stats.MaxStat, PlayerStats.stats.MaxStat, PlayerStats.stats.MaxStat);      //generate stats
        Debug.Log("Stats:" + stats.SpeedStat + stats.MaxHealthStat + stats.DamageStat);
    }

    // Update is called once per frame
    void Update()
    {
        //if bool destroyed in stats struct is true spawn drops, destroy boat
        if (stats.Destroyed)
        {
            int numDrops = Random.Range(0, maxDrops);       //random number of drops

            //spawn drops
            for (int i = 0; i < numDrops; i++)
            {
                ed.Spawn();
            }

            //destroy boat
            Destroy(gameObject);
        }
    }
}
