if(GameState.pathingMaps = -1)
    GameState.pathingMaps = ds_map_create();

if(!ds_map_empty(GameState.pathingMaps))
{
    var first;
    while(!ds_map_empty(GameState.pathingMaps))
    {
        first = ds_map_find_first(GameState.pathingMaps);
        mp_grid_destroy(GameState.pathingMaps[? first]);
        ds_map_delete(GameState.pathingMaps, first);
    }
    ds_map_clear(GameState.pathingMaps);
}
