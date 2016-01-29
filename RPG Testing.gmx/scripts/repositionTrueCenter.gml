///Reposition the object so that its origin is placed on the center of another instance's sprite
///Arguments:
///target : The instance to reposition to

var target = argument[0];

if(!instance_exists(target)) //error check for if an improper argument is passed
{
    show_debug_message("repositionTrueCenter : Received improper target " + string(target));
    exit;
}
    
var hw = target.sprite_width / 2;
var hh = target.sprite_height / 2;

var xi = target.x - target.sprite_xoffset;
var yi = target.y - target.sprite_yoffset;

x = xi + hw;
y = yi + hh;
