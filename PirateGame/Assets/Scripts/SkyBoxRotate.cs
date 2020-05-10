using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SkyBoxRotate : MonoBehaviour
{
    public float rotSpeed = 1.5f;       //speed for skybox to rotate at

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        RenderSettings.skybox.SetFloat("_Rotation", Time.time * rotSpeed);      //rotate skybox
    }
}
