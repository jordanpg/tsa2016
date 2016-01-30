///Apply damage to a target
///Arguments:
///attacker : Instance attacking
///target : Instance to attack
///damage : Damage to deal
///<impulse> : Knockback impulse if used
///<blend> : Forced blend for hit number

var this = argument[0]
if(!instance_exists(this))
{
    show_debug_message("damageTarget : Passed an invalid attacker " + string(this));
    exit;
}

var target = argument[1];

if(!instance_exists(target))
{
    show_debug_message("damageTarget : Passed an invalid target " + string(target));
    exit;
}

var damage = argument[2];
if(argument_count > 3)
    var impulse = argument[3];
else
    var impulse = 0;
    
if(argument_count > 4)
    var blend = argument[4];
else
    var blend = -1;

    
//stat calculations
damage *= this.baseAtk;

if(target.baseDef != 0)
    damage /= target.baseDef;
    
//critical hit stuff
if(random(1) < (1 / 6))
    damage *= 2;

if(abs(impulse) > 0)
    applyKnockback(target, impulse);
    
target.hp -= damage;
if(target.hp < 0)
    target.hp = 0;

spawnHitnumber(target.x, target.y, damage, blend);
