if(ds_map_exists(GameState.pathingMaps, mask_index))
    exit;

var mname = getMapName();
    
var scale = 0.25;

if(mask_index != -1)
{
    var w = abs(image_xscale) * (sprite_get_bbox_right(mask_index) - sprite_get_bbox_left(mask_index)) * scale;
    var h = abs(image_yscale) * (sprite_get_bbox_bottom(mask_index) - sprite_get_bbox_top(mask_index)) * scale;
}
else
{
    var w = abs(image_xscale) * (sprite_get_bbox_right(sprite_index) - sprite_get_bbox_left(sprite_index)) * scale;
    var h = abs(image_yscale) * (sprite_get_bbox_bottom(sprite_index) - sprite_get_bbox_top(sprite_index)) * scale;
}
    
GameState.pathingMaps[? mname] = mp_grid_create(0, 0, floor(room_width / w), floor(room_height / h), w, h);

mp_grid_add_instances(GameState.pathingMaps[? mname], Obj_col, false);
