using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoatStats : MonoBehaviour
{
    public float maxRandSpeed;      //max value for speed stat
    public float maxRandHealth;     //max value for health stat
    public float maxRandDamage;     //max value for damage stat
    public float maxRandFireRate;     //max value for damage stat

    public struct Boat
    {
        //stats as private variables
        private float speed_;
        private float maxHealth_;
        private float damage_;
        private float fireRate_;
        private float health_;
        private bool destroyed_;
        private float maxStat_;

        //stats as public variables using Get / Sets
        public float SpeedStat
        {
            get { return speed_; }
            set { speed_ = value; }
        }
        public float MaxHealthStat
        {
            get { return maxHealth_; }
            set { maxHealth_ = value; }
        }
        public float DamageStat
        {
            get { return damage_; }
            set { damage_ = value; }
        }
        public float FireRate
        {
            get { return fireRate_; }
            set { fireRate_ = value; }
        }
        public float Health
        {
            get { return health_; }
            set { health_ = value; }
        }
        public bool Destroyed
        {
            get { return destroyed_; }      //should only be changed within the struct
        }
        public float MaxStat
        {
            get { return maxStat_; }        //should only be changed within the struct
        }

        public void SpeedUp(float amount)
        {
            //increase speed stat
            this.SpeedStat += amount;
        }
        public void HealthUp(float amount)
        {
            //increase health stat
            this.MaxHealthStat += amount;

            this.TakeDamage(amount * -100);
        }
        public void DamageUp(float amount)
        {
            //increase damage stat
            this.DamageStat += amount;
        }
        public void TakeDamage(float amount)
        {
            this.Health -= amount;      //reduce health by amount
            if (this.Health >= (this.MaxHealthStat * 100))
            {
                //cap health at max health
                this.Health = (this.MaxHealthStat * 100);
            }
            if (this.Health <= 0)
            {
                //if health is < 0 kill boat            player and enemy will behave differently when this occurs
                this.destroyed_ = true;
            }
        }

        //constructor for boat struct
        public Boat(float speed, float health, float damage, float fireRate)
        {
            speed_ = speed;
            maxHealth_ = health;
            damage_ = damage;
            fireRate_ = fireRate;
            health_ = health * 100f;        //max health = health stat * 100
            destroyed_ = false;

            maxStat_ = speed;
            if(health > maxStat_)
            {
                maxStat_ = health;
            }
            if(damage > maxStat_)
            {
                maxStat_ = damage;
            }
            if(fireRate > maxStat_)
            {
                maxStat_ = fireRate;
            }
        }
    }

    public float FindMax(List<float> li)
    {
        float max = 0;
        for (int i = 0; i < li.Count; i++)
        {
            if(li[i] > max)
            {
                max = li[i];
            } 
        }

        return max;
    }

    //make boat with randomly generated stats 
    public virtual Boat GenerateStats(float maxSpeed, float maxHealth, float maxDamage, float maxFireRate)
    {
        //random stats for speed, health, damage        Mathf.Ceil rounds up
        float spd = Mathf.Ceil(Random.Range(0, maxSpeed));
        float hlth = Mathf.Ceil(Random.Range(0, maxHealth));
        float dmg = Mathf.Ceil(Random.Range(0, maxDamage));
        float fr = Mathf.Ceil(Random.Range(0, maxFireRate));

        return new Boat(spd, hlth, dmg, fr);        //return boat with stats
    }

}
