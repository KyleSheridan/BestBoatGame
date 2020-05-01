using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Gold : Drops
{
    public int maxVal;      //min value for gold drop
    public int minVal;      //max value for gold drop

    private int value;      //actual value for gold drop

    // Start is called before the first frame update
    void Start()
    {
        value = Random.Range(minVal, maxVal);       //give random value between minVal and maxVal
    }

    // Update is called once per frame
    void Update()
    {
        Rotate();       //rotate slowly
    }

    private void OnTriggerEnter(Collider other)
    {
        if(other.gameObject.tag == "Player")
        {
            //if player picks up gold increase score
            Score.score += value;
            Destroy(gameObject);        //destroy so cant be picked up again
        }
    }
}
