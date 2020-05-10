using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;
using UnityEngine.EventSystems;

public class ButtonHighlight : MonoBehaviour, ISelectHandler, IDeselectHandler
{
    public GameObject boat;     //Boat model to change position on highlight

    public float xPoint;        //where to move boat on x
    public float zPoint;        //where to move boat on z

    public RectTransform rt;    //button transform component

    private Vector3 startPoint; //where boat starts

    // Start is called before the first frame update
    void Start()
    {
        startPoint = boat.transform.position;       //startPoint = the boats poistion

        rt = GetComponent<RectTransform>();         //get rect transform component
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    //change boat position and button size on select
    public void OnSelect(BaseEventData eventData)
    {
        boat.transform.position = new Vector3(xPoint, boat.transform.position.y, zPoint);   //change boat position

        rt.localScale = new Vector3(1.5f, 1.5f, 1f);        //change button size

    }

    //change boat position and button size back to start on deselect
    public void OnDeselect(BaseEventData eventData)
    {
        boat.transform.position = startPoint;           //boat position

        rt.localScale = new Vector3(1f, 1f, 1f);        //button size
    }
}
