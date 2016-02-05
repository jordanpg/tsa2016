//scr_text("Text", speed, font);

if(instance_exists(global.currDialog))
    exit;

txt = instance_create((room_width - 768) / 2, 340, Obj_Window_Base);

global.currDialog = txt;

with(txt){

    padding = 16;
    max_length = 768 - (padding * 2);
    text = argument[0];
    spd = argument[1];
    
    if(argument_count > 2 && font_exists(argument[2]))
        font = argument[2];
    else
        font = Fnt_Window_Text;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    //set font so calculations use right font not default one
    draw_set_font(font);
    
    text_width = string_width_ext(text, font_size + (font_size / 2), max_length);
    text_height = string_height_ext(text, font_size + (font_size / 2), max_length);
    
    box_width = text_width + (padding * 2);
    box_height = text_height + (padding * 2);
    
    image_xscale = 12;
    image_yscale = 2;
    event_user(0);
}
