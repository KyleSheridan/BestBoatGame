using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawner : MonoBehaviour
{
    public int maxShips;

    public GameObject pirate;
    public GameObject merchant;

    private GameObject[] spawnPoints;

    private bool spawnable = true;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        int shipCount = GameObject.FindGameObjectsWithTag("Enemy").Length;

        spawnPoints = GameObject.FindGameObjectsWithTag("Spawn");

        if(shipCount < maxShips && spawnable)
        {
            int randNum = Random.Range(0, spawnPoints.Length);

            int randShip = Random.Range(0, 2);

            if(randShip == 0)
            {
                Instantiate(merchant, spawnPoints[randNum].transform.position, spawnPoints[randNum].transform.rotation);
            }
            else
            {
                Instantiate(pirate, spawnPoints[randNum].transform.position, spawnPoints[randNum].transform.rotation);
            }

            StartCoroutine(SpawnWait(5));
        }
    }

    IEnumerator SpawnWait(float waitTime)
    {
        spawnable = false;

        yield return new WaitForSeconds(waitTime);

        spawnable = true;
    }
}
