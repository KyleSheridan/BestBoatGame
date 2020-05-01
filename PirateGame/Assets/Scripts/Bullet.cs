using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Bullet : MonoBehaviour
{
    public float moveSpeed;     //speed bullet moves at
    public float damage;        //damage bullet deals

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        transform.Translate(Vector3.forward * moveSpeed * Time.deltaTime);        //move forward at move speed
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.gameObject.tag == "Enemy")
        {
            //if bullet collides with enemy deal damage to enemy
            EnemeyStats enemy = collision.gameObject.GetComponent<EnemeyStats>();
            enemy.stats.TakeDamage(damage);
            Debug.Log("Hit");

            Destroy(gameObject);
        }

        //destroy bullet if it collides with terrain
        if(collision.gameObject.tag == "Terrain")
        {
            Destroy(gameObject);
        }

        if (collision.gameObject.tag == "Player")
        {
            PlayerStats.stats.TakeDamage(damage);

            Destroy(gameObject);
        }
    }
}
