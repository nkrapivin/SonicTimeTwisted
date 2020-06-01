// argument0 - text
// argument1 - current value
// argument2 - minimum value
// argument3 - maximum value

confirmation_text = argument0;
confirmation_cursor = argument1;
confirmation_no_action = argument2; // used as minimum instead
confirmation_yes_action = argument3; // used as maximum instead

var view_width = view_wview[view_current];
var view_height = view_hview[view_current];

draw_set_font(objResources.fontHudMin);
internal__draw_confirmation_height = string_height_ext(confirmation_text, 0, view_width - 4*margin)*4 + 2*margin;
var text_width = string_width_ext(confirmation_text, 0, view_width - 4*margin) + 2*margin;
var slider_width = string_width(string(confirmation_no_action)) + string_width(string(confirmation_yes_action)) + 240 + 2*margin;
var button_width = 0;

internal__draw_confirmation_width = max(text_width, slider_width);
internal__draw_confirmation_rect_x_center = view_width/2;
internal__draw_confirmation_rect_x1 = (view_width - internal__draw_confirmation_width) div 2;
internal__draw_confirmation_rect_x2 = internal__draw_confirmation_rect_x1 + internal__draw_confirmation_width;
internal__draw_confirmation_rect_y1 = (view_height - internal__draw_confirmation_height) div 2;
internal__draw_confirmation_rect_y2 = internal__draw_confirmation_rect_y1 + internal__draw_confirmation_height;

internal__draw_confirmation_yes_button_x1 = internal__draw_confirmation_rect_x1 + margin;
internal__draw_confirmation_yes_button_x2 = internal__draw_menu_rect_x_center -17;
internal__draw_confirmation_no_button_x1 = internal__draw_menu_rect_x_center + 8;
internal__draw_confirmation_no_button_x2 = internal__draw_confirmation_rect_x2 - margin - 17;
internal__draw_confirmation_buttons_y = 0;

timer = 0;
state = 16;
