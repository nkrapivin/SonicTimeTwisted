// argument0 - items script

menu_fn_set_scripts(argument[0], -1);
var draw_absolutely = false;
if(argument_count > 1)
{
    if(argument[1])
    {
        draw_absolutely = true;
    }
}
if(draw_absolutely)
{
    draw_offset_x = 0;
    draw_offset_y = 0;
}
else
{
    draw_offset_x = view_xview[view_current];
    draw_offset_y = view_yview[view_current];
}
state = 1;
timer = 0;
