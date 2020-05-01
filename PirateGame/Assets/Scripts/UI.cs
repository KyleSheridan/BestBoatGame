using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class UI : MonoBehaviour
{
    public Slider healthBar;            //health bar to show health relative to max health
    public GameObject speedStat;        //bar to represent speed stat
    public GameObject healthStat;       //bar to represent health stat
    public GameObject damageStat;       //bar to represent damage stat

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        //set health bar fill to percentage of health to max health
        healthBar.value = (PlayerStats.stats.Health / (PlayerStats.stats.MaxHealthStat * 100));


        //set scale of stat bar to the value of relative stat
        speedStat.transform.localScale = new Vector3(PlayerStats.stats.SpeedStat, speedStat.transform.localScale.y, speedStat.transform.localScale.z);
        healthStat.transform.localScale = new Vector3(PlayerStats.stats.MaxHealthStat, healthStat.transform.localScale.y, healthStat.transform.localScale.z);
        damageStat.transform.localScale = new Vector3(PlayerStats.stats.DamageStat, damageStat.transform.localScale.y, damageStat.transform.localScale.z);
    }
}
