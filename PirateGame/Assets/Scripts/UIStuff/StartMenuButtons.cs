using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class StartMenuButtons : MonoBehaviour
{
    //Load main game scene
    public void StartGame()
    {
        SceneManager.LoadScene("MainGame");
    }

    //Load main menu scene
    public void MainMenu()
    {
        SceneManager.LoadScene("TitleScreen");
    }

    //Close game
    public void QuitGame()
    {
        Application.Quit();
    }
}
