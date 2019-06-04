/// @description Insert description here
// You can write your code in this editor

show_debug_message(obj_dude.game_win);
show_debug_message(obj_dude.game_lose);

if obj_dude.game_win == false && obj_dude.game_lose == false{
if alarm[0] ==-1 {
		alarm[0] = 100;
	}
}
show_debug_message(ai_timer)
if ai_timer >= 5000 && obj_dude.player_hp != 0{
	obj_dude.game_win = true;
	draw_text(200,200,"You Win!");
	draw_text(150,250,"Play again? /")
	draw_text(250,250,"/ Quit")
	
	var mousex = device_mouse_x_to_gui(0); // GUI position of mouse's x coordinate
var mousey = device_mouse_y_to_gui(0); // GUI position of mouse's y coordinate
	
var xx = 150; // x position of the GUI element (insted of 0)
var yy = 250;// y position of the GUI element (insted of 0)
var qx = 250;
var qy = 250;
var ww = 100; // width of the GUI element (insted of 50)
var hh = 50; // height of the GUI element (insted of 50)
if (point_in_rectangle(mousex, mousey, xx, yy, xx + ww, yy + hh)) {
    // Check for mouse input
    if (mouse_check_button_pressed(mb_left)) {
        // What to happen when clicked
        show_debug_message("AGAIN????");
		room_restart();
    }
}
if (point_in_rectangle(mousex, mousey, qx, qy, qx + ww, qy + hh)) {
    // Check for mouse input
    if (mouse_check_button_pressed(mb_left)) {
        // What to happen when clicked
        show_debug_message("Womble");
		game_end();
    }
}
}

if obj_dude.player_hp == 0 {
	draw_text(175,200,"You Lose :c");
	draw_text(150,250,"Try again? /")
	draw_text(250,250,"/ Quit")
	
var mousex = device_mouse_x_to_gui(0); // GUI position of mouse's x coordinate
var mousey = device_mouse_y_to_gui(0); // GUI position of mouse's y coordinate
	
var xx = 150; // x position of the GUI element (insted of 0)
var yy = 250;// y position of the GUI element (insted of 0)
var qx = 250;
var qy = 250;
var ww = 100; // width of the GUI element (insted of 50)
var hh = 50; // height of the GUI element (insted of 50)
if (point_in_rectangle(mousex, mousey, xx, yy, xx + ww, yy + hh)) {
    // Check for mouse input
    if (mouse_check_button_pressed(mb_left)) {
        // What to happen when clicked
        show_debug_message("AGAIN????");
		room_restart();
    }
}
if (point_in_rectangle(mousex, mousey, qx, qy, qx + ww, qy + hh)) {
    // Check for mouse input
    if (mouse_check_button_pressed(mb_left)) {
        // What to happen when clicked
        show_debug_message("Womble");
		game_end();
    }
}
}
