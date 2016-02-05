with(Obj_Npc_Base){
    //if it's heros first time interacting with quest npc
    if(first_interaction == true){
        //set to false
        first_interaction = false;
        //display quest dialog
        //show_message(quest_message);
        Scr_text(quest_message + end_message, 0.5);
        Scr_text(quest_message2 + end_message, 0.5);
        
        //start quest once you talk to npc
        GameState.switches[? "quest_start"] = true;
        //activate coin
        instance_activate_object(Obj_Gold_Coin);
    }else if((GameState.switches[? "quest_start"] == true) && (GameState.switches[? "quest_obj_obtained"] == false)){
        //show_message(quest_condition_message);
        Scr_text(quest_condition_message + end_message, 0.5);
        Scr_text(quest_message2 + end_message, 0.5);
        
    }else if((GameState.switches[? "quest_start"] == true) && (GameState.switches[? "quest_obj_obtained"] == true)&& (GameState.switches[? "quest_finished"] == false)){
        //show_message(quest_complete_message);
        Scr_text(quest_complete_message + end_message, 0.5);
        
        GameState.switches[? "quest_finished"] = true;
        
    }else if((GameState.switches[? "quest_finished"] == true)){
        //show_message(quest_complete_message);
        Scr_text(quest_complete_message + end_message, 0.5);
        
    }
}
