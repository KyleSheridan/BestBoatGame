using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyDrops : MonoBehaviour
{
    public GameObject[] drops;  //Array of droppable items

    public float dropDist;

    private int maxRand = 0;        //total random for spawn chance

    private void Start()
    {
        foreach (GameObject drop in drops)
        {
            maxRand += drop.GetComponent<Drops>().dropChance;       //max rand = all items spawnchance in array added together
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void Spawn()
    {
        int randomDrop = Mathf.FloorToInt(Random.Range(0, maxRand)); //random item

        int currentRand = 0;        //the current spawnchance for random item
        int spawnItem = 0;          //Item in array
        bool canSpawn = true;      //only spawn one item per loop

        foreach (GameObject item in drops)
        {
            currentRand += item.GetComponent<Drops>().dropChance;       //spawnchance of current item + spawnchance of previous items

            if (randomDrop < currentRand && canSpawn)           //if random number is < currnent rand and there hasnt been an item spawned
            {
                Instantiate(drops[spawnItem], RandomPoint(), Quaternion.Euler(Vector3.zero));      //spawn item
                canSpawn = false;                                                                      //spawnable = false
            }

            spawnItem++;        //number in array
        }
    }

    //random displacemnt for drops
    public Vector3 RandomPoint()
    {
        //random x / z values
        float randXMove = Random.Range(-dropDist, dropDist);
        float randZMove = Random.Range(-dropDist, dropDist);

        //return displacement
        return new Vector3(transform.position.x + randXMove, transform.position.y, transform.position.z + randZMove);
    }
}
