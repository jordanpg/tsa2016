///Create a hitnumber at the designated point
///Arguments:
///x : x position to spawn hit number
///y : y position to spawn hit number
///amt : amount of damage done
///<blend> : forced color value

var xp = argument[0];
var yp = argument[1];
var amt = argument[2];
if(argument_count > 3)
    var blend = argument[3];
else
    var blend = -1;

var hspeedMin = -50;
var hspeedMax = 50;
var vspeedMin = -40;
var vspeedMax = -60;
var gravityMin = 100;
var gravityMax = 100;
var lifetimeMin = 0;
var lifetimeMax = 0;
var fadeMin = 500;
var fadeMax = 500;

var this = instance_create(xp, yp, Obj_HitNumFX);
with(this)
{
    xspd = random_range(hspeedMin, hspeedMax);
    yspd = random_range(vspeedMin, vspeedMax);
    grav = random_range(gravityMin, gravityMax);
    gravDir = 270;
    lifetime = random_range(lifetimeMin, lifetimeMax);
    fadeTime = random_range(fadeMin, fadeMax);
    
    amount = amt;
    
    if(blend != -1)
    {
        forceBlend = true;
        image_blend = blend;
    }
}
