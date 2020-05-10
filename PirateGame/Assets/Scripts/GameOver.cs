using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameOver : MonoBehaviour
{
    public GameObject gameOver;

    // Update is called once per frame
    void Update()
    {
        if (PlayerStats.stats.Destroyed)
        {
            Time.timeScale = 0;

            gameOver.SetActive(true);
        }
    }
}
