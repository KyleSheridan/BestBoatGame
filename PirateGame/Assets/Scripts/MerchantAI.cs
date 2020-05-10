using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MerchantAI : MonoBehaviour
{
    public Rigidbody rb;            //rigid body of ship
    public Transform player;        //player location
    public Transform spawnPoint;
    public GameObject bulletPrefab;

    public float speed;             //acceleration for boat
    public float maxSpeed;          //max speed boat can move
    public float rotSpeed;          //turning speed

    public float closeDist;         //merchant: dist to start fleeing, pirate: dist to stop chasing
    public float farDist;           //merchant: dist to stop fleeing, pirate: dist to start chasing

    public float shootRot;          //rotation diference before shooting player

    public bool pirate;             //if true then behave like pirate, if false behave like merchant

    public EnemeyStats es;          //EnemyStats Compontent of ship

    public bool withinRange = false;   //bool to check if within range

    private bool canShoot = true;       //stop bullets spawning every frame
    public bool shootable = false;     //for rotating and shooting at player

    // Start is called before the first frame update
    void Start()
    {
        //get rigid body and EnemyStats components and player position
        rb = GetComponent<Rigidbody>();
        es = GetComponent<EnemeyStats>();
        player = GameObject.FindGameObjectWithTag("Player").GetComponent<Transform>();
    }

    // Update is called once per frame
    void Update()
    {
        Vector3 direction;      //direction to move towards
        Vector3 angle;          //direction to face

        if (withinRange && rb.velocity.magnitude <= maxSpeed * (0.5f * es.stats.SpeedStat) * Storm.stormSpeed && !pirate)
        {
            //if merchant

            //find direction away from player 
            direction = FindDirection(transform.position, player.position);
            rb.AddForce(direction * speed * es.stats.SpeedStat * Time.deltaTime);        //move in direction

            angle = Vector3.RotateTowards(transform.forward, direction, rotSpeed * es.stats.SpeedStat * Time.deltaTime, 0);      //find direction between boats current forward and the desired direction to face 

            transform.rotation = Quaternion.LookRotation(angle);        //face that direction
        }
        else if (withinRange && rb.velocity.magnitude <= maxSpeed * (0.5f * es.stats.SpeedStat) * Storm.stormSpeed && pirate)
        {
            //if pirate

            //find direction towards player 
            direction = FindDirection(player.position, transform.position);
            rb.AddForce(direction * speed * es.stats.SpeedStat * Time.deltaTime);        //move in direction

          
        }

        if (shootable)
        {
            // if within shooting range

            //find direction towards player 
            direction = FindDirection(player.position, transform.position);

            angle = Vector3.RotateTowards(transform.forward, direction, rotSpeed * es.stats.SpeedStat * Time.deltaTime, 0);      //find direction between boats current forward and the desired direction to face
            
            if(angle.y <= direction.y + shootRot && angle.y >= direction.y - shootRot && canShoot)
            {
                StartCoroutine(ShootRate(1 / (es.stats.FireRate * 0.1f)));

                GameObject bullet = Instantiate(bulletPrefab, spawnPoint.position, transform.rotation);       //spawn bullet

                Bullet bul = bullet.GetComponent<Bullet>();         //get bullet script

                bul.damage = es.stats.DamageStat * 20;     //set bullet damage = enemy damage
            }

            transform.rotation = Quaternion.LookRotation(angle);        //face that direction
        }

        if (Vector3.Distance(player.position, transform.position) < closeDist && !pirate)
        {
            //if merchant and within closeDist
            withinRange = true;
        } 
        else if (Vector3.Distance(player.position, transform.position) > farDist && !pirate)
        {
            //if merchant and outside farDist
            withinRange = false;
        }
        else if(Vector3.Distance(player.position, transform.position) < closeDist && pirate)
        {
            //if pirate and within close dist
            withinRange = false;
        }
        else if(Vector3.Distance(player.position, transform.position) < farDist && pirate)
        {
            //if pirate and within far dist
            withinRange = true;
            shootable = true;
        }
        else
        {
            //if pirate anf outside far dist
            withinRange = false;
            shootable = false;
        }
    }

    //find direction betwwen two points
    public Vector3 FindDirection(Vector3 vect1, Vector3 vect2)
    {
        Vector3 displacement = vect1 - vect2;       //find direction with dist

        Vector3 direct = displacement / (Vector3.Distance(vect1, vect2));       //divide by dist to normalize

        return new Vector3(direct.x, 0, direct.z);      //return direction
    }

    //stop enemy shooting every frame
    IEnumerator ShootRate(float waitTime)
    {
        canShoot = false;

        yield return new WaitForSeconds(waitTime);

        canShoot = true;
    }
}
