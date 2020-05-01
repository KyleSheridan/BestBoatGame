using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerShoot : MonoBehaviour
{
    public GameObject bulletPrefab;       //bullet prefab to be spawned
    public Transform spawnPoint;    //position for bullet to spawn

    private bool canShoot = true;

    // Update is called once per frame
    void Update()
    {
        if(Input.GetAxis("Fire1") > 0 && canShoot)
        {
            StartCoroutine(ShootRate(1 / (PlayerStats.stats.FireRate * 0.25f)));

            GameObject bullet = Instantiate(bulletPrefab, spawnPoint.position, transform.rotation);       //spawn bullet

            Bullet bul = bullet.GetComponent<Bullet>();         //get bullet script

            bul.damage = PlayerStats.stats.DamageStat * 50;     //set bullet damage = player damage
        }
    }

    //wait time between shots
    IEnumerator ShootRate(float waitTime)
    {
        canShoot = false;

        yield return new WaitForSeconds(waitTime);

        canShoot = true;
    }
}
