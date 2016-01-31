///Play a random sound from an array in GameState's soundMap
///Arguments:
///type : Key of the desired sound array
///priority : Priority of sound
///loop : Set sound to loop
///Returns an index for the played audio (for use in methods like audio_stop_sound)

if(GameState.soundMap == -1)
    initSounds();

var type = argument[0];
if(!ds_map_exists(GameState.soundMap, type))
{
    show_debug_message("playMappedSound : Attempt to play unmapped type " + type);
    exit;
}

var priority = argument[1];
var loop = argument[2];

var arr = GameState.soundMap[? type];
var len = array_length_1d(arr);

return audio_play_sound(arr[random_range(0, len-1)], priority, loop);
