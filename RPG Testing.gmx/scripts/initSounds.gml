///Initialize sound map used for randomized sounds
with(GameState)
{
    if(soundMap != -1)
        exit;
        
    soundMap = ds_map_create();
    
    //Magic cast sounds
    magic_cast[0] = Snd_magic1;
    magic_cast[1] = Snd_magic2;
    magic_cast[2] = Snd_magic3;
    
    soundMap[? "magic_cast"] = magic_cast;
    
    //Magic charge sounds
    magic_charge[0] = Snd_charge1;
    magic_charge[1] = Snd_charge2;
    
    soundMap[? "magic_charge"] = magic_charge;
    
    //Smash sounds
    hit_smash[0] = Snd_smash1;
    hit_smash[1] = Snd_smash2;
    hit_smash[2] = Snd_smash3;
    
    soundMap[? "hit_smash"] = hit_smash;
    
    //Hard hit sounds
    hit_hard[0] = Snd_hardhit1;
    hit_hard[1] = Snd_hardhit2;
    
    soundMap[? "hit_hard"] = hit_hard;
    
    //Normal hit sounds
    hit_n[0] = Snd_hit1;
    hit_n[1] = Snd_hit2;
    hit_n[2] = Snd_hit3;
    hit_n[3] = Snd_hit4;
    hit_n[4] = Snd_hit5;
    
    soundMap[? "hit"] = hit_n;
}
