///Apply knockback force to a target physics instance
///Arguments:
///target : Instance to knock back
///force : Magnitude of knockback

var target = argument[0];

if(!instance_exists(target)) //error check for improper arguments
{
    show_debug_message("applyKnockback : Received improper target " + string(target) + " (not a real instance)");
    exit;
}

if(!target.phy_active)
{
    show_debug_message("applyKnockback : Received improper target " + string(target) + " (physics inactive)");
    exit;
}

var force = argument[1];

var xdif = target.x - x;
var ydif = target.y - y;

var len = sqrt(sqr(xdif) + sqr(ydif));

with(target)
    physics_apply_force(x, y, xdif * force / len, ydif * force / len);
