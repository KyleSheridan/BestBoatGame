using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;
using UnityEngine.EventSystems;

public class ButtonHighlight : MonoBehaviour, ISelectHandler, IDeselectHandler
{
    public GameObject boat;

    public float xPoint;
    public float zPoint;

    public float scale;

    public RectTransform rt;

    private Vector3 startPoint;

    // Start is called before the first frame update
    void Start()
    {
        startPoint = boat.transform.position;

        rt = GetComponent<RectTransform>();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OnSelect(BaseEventData eventData)
    {
        boat.transform.position = new Vector3(xPoint, boat.transform.position.y, zPoint);

        rt.localScale = new Vector3(1.5f, 1.5f, 1f);

    }

    public void OnDeselect(BaseEventData eventData)
    {
        boat.transform.position = startPoint;

        rt.localScale = new Vector3(1f, 1f, 1f);
    }
}
