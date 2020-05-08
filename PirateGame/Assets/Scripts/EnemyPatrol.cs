using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class EnemyPatrol : MonoBehaviour
{
    public GameObject[] targets;

    private MerchantAI mAI;

    private Vector3 target;

    // Start is called before the first frame update
    void Start()
    {
        targets = GameObject.FindGameObjectsWithTag("Target");

        mAI = GetComponent<MerchantAI>();

        target = FindTarget();
    }

    // Update is called once per frame
    void Update()
    {
        if(Vector3.Distance(transform.position, target) < 10)
        {
            target = FindTarget();
        }

        if(!mAI.shootable && !mAI.withinRange && mAI.rb.velocity.magnitude <= mAI.maxSpeed * (0.5f * mAI.es.stats.SpeedStat) * Storm.stormSpeed)
        {
            //find direction towards target 
            Vector3 direction = mAI.FindDirection(target, transform.position);
            mAI.rb.AddForce(direction * mAI.speed * mAI.es.stats.SpeedStat * Time.deltaTime);        //move in direction

            Vector3 angle = Vector3.RotateTowards(transform.forward, direction, mAI.rotSpeed * mAI.es.stats.SpeedStat * Time.deltaTime, 0);      //find direction between boats current forward and the desired direction to face 

            transform.rotation = Quaternion.LookRotation(angle);        //face that direction
        }
        
    }

    Vector3 FindTarget()
    {
        int randNum = Random.Range(0, targets.Length);

        return targets[randNum].transform.position;
    }
}
