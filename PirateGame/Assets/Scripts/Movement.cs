using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement : MonoBehaviour
{
    public float moveSpeed;     //acceleration player moves at
    public float turnSpeed;     //acceleration player turns at

    public float maxSpeed;      //max speed
    public float maxBackSpeed;  //max backwards speed

    public float terrainDmg;    //damage dealt when collide with terrain

    public Rigidbody rb;        //rigid body component

    private float forward = 0;  //Vertical input
    private float turning = 0;  //horrizontal input

    // Start is called before the first frame update
    void Start()
    {
        rb = GetComponent<Rigidbody>();     //get rigid body component
    }

    // Update is called once per frame
    void Update()
    {
        //get inputs
        forward = Input.GetAxis("Vertical");
        turning = Input.GetAxis("Horizontal");

        if(forward > 0 && rb.velocity.magnitude <= maxSpeed * Storm.stormSpeed)
        {
            rb.AddForce(transform.forward * moveSpeed * PlayerStats.stats.SpeedStat * Time.deltaTime);        //add force forward
        }
        else if(forward < 0 && rb.velocity.magnitude <= maxBackSpeed * Storm.stormSpeed)
        {
            rb.AddForce(-transform.forward * moveSpeed * PlayerStats.stats.SpeedStat * Time.deltaTime);       //add force backwards
        }

        if(turning > 0)
        {
            transform.rotation = Quaternion.Euler(new Vector3(transform.rotation.x, transform.eulerAngles.y + (turnSpeed * Time.deltaTime), transform.rotation.z));     //turn right
        }
        else if(turning < 0)
        {
            transform.rotation = Quaternion.Euler(new Vector3(transform.rotation.x, transform.eulerAngles.y - (turnSpeed * Time.deltaTime), transform.rotation.z));     //turn left
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        if(collision.gameObject.tag == "Terrain")
        {
            PlayerStats.stats.TakeDamage(terrainDmg);       //damage player if collides with terrain
        }
    }
}
