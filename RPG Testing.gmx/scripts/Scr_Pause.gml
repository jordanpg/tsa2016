with(Obj_AI_Base){
    phy_active = false;
}
with(Obj_G_Knight){
    phy_active = false;
}
with(Obj_Npc_Base){
    phy_active = false;
}
with(Obj_Sword_Slash){
    instance_deactivate_object(Obj_Sword_Slash);
    Obj_Sword_Slash.visible = false;
    phy_active = false;
}
