if(GameState.pathingMaps = -1)
    GameState.pathingMaps = ds_map_create();

if(!ds_map_empty(GameState.pathingMaps))
    ds_map_clear(GameState.pathingMaps);
