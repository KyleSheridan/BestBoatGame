using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameOver : MonoBehaviour
{
    public GameObject gameOver;     //game over screen

    private void Start()
    {
        Time.timeScale = 1;     //set time to normal speed
    }

    // Update is called once per frame
    void Update()
    {
        if (PlayerStats.stats.Destroyed)
        {
            Time.timeScale = 0;     //pause game

            gameOver.SetActive(true);       //display GameOver screen
        }
    }
}
