using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawner : MonoBehaviour
{
    public int maxShips;                //max enemys in scene

    public GameObject pirate;           //pirate prefab
    public GameObject merchant;         //merchant prefab

    public GameObject[] spawnPoints;    //spawn points in array

    private bool spawnable = true;      //dont spawn every frame

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        int shipCount = GameObject.FindGameObjectsWithTag("Enemy").Length;      //find amount of ships in scene

        spawnPoints = GameObject.FindGameObjectsWithTag("Spawn");               //find spawn points

        //if can spawn a ship
        if(shipCount < maxShips && spawnable)
        {
            int randNum = Random.Range(0, spawnPoints.Length);          //find random index for spawnPoints

            int randShip = Random.Range(0, 2);

            //if boat too close to spawn point = false
            bool canSpawn = spawnPoints[randNum].gameObject.GetComponent<SpawnActive>().spawnable;

            //spawn boat and wait 5 seconds
            if(randShip == 0 && canSpawn)
            {
                Instantiate(merchant, spawnPoints[randNum].transform.position, spawnPoints[randNum].transform.rotation);
                StartCoroutine(SpawnWait(5));
            }
            else if(randShip == 1 && canSpawn)
            {
                Instantiate(pirate, spawnPoints[randNum].transform.position, spawnPoints[randNum].transform.rotation);
                StartCoroutine(SpawnWait(5));
            }
        }
    }

    //wait between spawns
    IEnumerator SpawnWait(float waitTime)
    {
        spawnable = false;

        yield return new WaitForSeconds(waitTime);

        spawnable = true;
    }
}
