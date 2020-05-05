using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Storm : MonoBehaviour
{
    public static float stormSpeed = 1f;

    public GameObject rain;
    public GameObject storm;

    public float waitTime;

    // Start is called before the first frame update
    void Start()
    {
        waitTime = Random.Range(90, 180);
    }

    // Update is called once per frame
    void Update()
    {
        waitTime -= Time.deltaTime;

        if(waitTime <= 0)
        {
            StartCoroutine(StormActive());
        }
    }

    IEnumerator StormActive()
    {
        waitTime = Random.Range(150, 240);

        rain.SetActive(true);
        storm.SetActive(true);

        stormSpeed = 0.75f;

        yield return new WaitForSeconds(60);

        rain.SetActive(false);
        storm.SetActive(false);

        stormSpeed = 1f;
    }
}
