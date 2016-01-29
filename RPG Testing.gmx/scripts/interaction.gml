///hero interaction

var dist = point_distance(Obj_G_Knight.phy_position_x, Obj_G_Knight.phy_position_y, x, y);

//variable for distance needed to interact with an npc
interaction_dist = 27;

//if player is within interaction range
if(dist < interaction_dist){

    //check to see if player wants to interact with npc now
    if(Obj_G_Knight.action == true){
        
        //return true if character is interacting
        return true;
        
    }
}

//return false if character isnt interacting with npc
return false;
