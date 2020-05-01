using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Drops : MonoBehaviour
{
    public int dropChance;      //drop chance for items

    protected int rotSpeed = 20;        //speed items rotate at

    protected void Rotate()
    {
        transform.Rotate(0, rotSpeed * Time.deltaTime, 0);      //rotate items to show they can be interacted with
    }
}
