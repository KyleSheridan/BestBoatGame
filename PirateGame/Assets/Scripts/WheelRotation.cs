using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WheelRotation : MonoBehaviour
{
    public float rotSpeed;      //speed wheel rotates

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if(Input.GetAxis("Horizontal") > 0)
        {
            //if turning right rotate clockwise
            transform.localRotation = Quaternion.Euler(new Vector3(0, 0, transform.eulerAngles.z - (rotSpeed * Time.deltaTime)));
        }
        else if(Input.GetAxis("Horizontal") < 0)
        {
            //if turning left rotate anticlockwise
            transform.localRotation = Quaternion.Euler(new Vector3(0, 0, transform.eulerAngles.z + (rotSpeed * Time.deltaTime)));
        }
    }
}
