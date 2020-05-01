using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraChange : MonoBehaviour
{
    public Transform firstPerson;       //position of first person camera
    public Transform thirdPerson;       //position of thirrd person camera

    private bool change = true;     //bool to change camera (true: third person, false: first person) 
    private bool inUse = false;     //camera change on button down instead of every frame

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        //stops camera changing every frame
        if (Input.GetAxis("ChangeCamera") != 0 && change)
        {
            if (!inUse)
            {
                inUse = true;
                change = false;
            }
        }
        if(Input.GetAxis("ChangeCamera") != 0 && !change)
        {
            if (!inUse)
            {
                inUse = true;
                change = true;
            }
        }
        if (Input.GetAxis("ChangeCamera") == 0)
        {
            inUse = false;
        }


        //changes camera position when bool is true / false
        if (change)
        {
            transform.position = thirdPerson.position;
            transform.rotation = thirdPerson.rotation;
        }
        else
        {
            transform.position = firstPerson.position;
            transform.rotation = firstPerson.rotation;
        }
    }
}
