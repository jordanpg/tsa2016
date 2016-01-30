///Initiate an attack on an object
///Arguments:
///attacker : Object attacking
///ax : Attack aim x (room position)
///ay : Attack aim y (room position)
///type : Attack object to use

var attacker = argument[0];
var ax = argument[1];
var ay = argument[2];
var type = argument[3];

var ang = darctan2(ay - attacker.y, ax - attacker.x) + 90;
with(instance_create(attacker.x, attacker.y, type))
{
    if(phy_active)
        phy_rotation = ang;
    else
        image_angle = ang;
        
    parent = attacker.id;
}
