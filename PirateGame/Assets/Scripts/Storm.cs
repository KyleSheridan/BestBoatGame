using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Storm : MonoBehaviour
{
    public static float stormSpeed = 1f;        //multiply wiht boat speed to slow down boats

    public GameObject rain;                     //rain particle system
    public GameObject storm;                    //UI to make scene darker

    public float waitTime;                      //time before storm starts 

    // Start is called before the first frame update
    void Start()
    {
        waitTime = Random.Range(90, 180);       //random time between 90 and 180 seconds
    }

    // Update is called once per frame
    void Update()
    {
        waitTime -= Time.deltaTime;             //wait time - time of frame

        //if wait time = 0 then start storm 
        if(waitTime <= 0)
        {
            StartCoroutine(StormActive());
        }
    }

    IEnumerator StormActive()
    {
        waitTime = Random.Range(150, 240);      //give new wait time

        rain.SetActive(true);                   //set particle system to active
        storm.SetActive(true);                  //set UI to active

        RenderSettings.fogDensity = 0.01f;      //increase fog density

        stormSpeed = 0.75f;                     //slow boats

        yield return new WaitForSeconds(60);    //how long storm lasts

        //turn off storm effects
        rain.SetActive(false);
        storm.SetActive(false);

        RenderSettings.fogDensity = 0.002f;

        stormSpeed = 1f;        //return speed to normal
    }
}
