/// @description Insert description here
// You can write your code in this editor
draw_self();
with obj_icon{
	draw_self();
}
if text_open == true{
	display = draw_rectangle_color(30,30,400,400,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);
	display.depth = -420;
}

if timer = 100{
	first_message = true;

}

	if first_message == true{
	display = draw_rectangle_color(40,40,400,400,c_dkgray,c_dkgray,c_dkgray,c_dkgray,false);
	display.depth = -420;
	display_out = draw_rectangle(40,40,400,400,true);
	display_out.depth = -431;
	draw_text(135,55,"Jonathan GameJam");
	draw_line(115,85,315,85);
	bubble = draw_rectangle_color(75,100,250,125,c_blue,c_blue,c_blue,c_blue,false);
	bubble.depth = -455;
	draw_text(100,100,"You ready yet?");
	yes_button = draw_rectangle_color(350,150,300,170,c_blue,c_blue,c_blue,c_blue,false);
	text = draw_text(310,150,"Yes")
	no_button = draw_rectangle_color(350,180,300,200,c_blue,c_blue,c_blue,c_blue,false);
	draw_text(310,180,"No");
	
var mousex = device_mouse_x_to_gui(0); // GUI position of mouse's x coordinate
var mousey = device_mouse_y_to_gui(0); // GUI position of mouse's y coordinate
	
var xx = 310; // x position of the GUI element (insted of 0)
var yy = 180; // y position of the GUI element (insted of 0)
var ww = 50; // width of the GUI element (insted of 50)
var hh = 50; // height of the GUI element (insted of 50)
if (point_in_rectangle(mousex, mousey, xx, yy, xx + ww, yy + hh)) {
    // Check for mouse input
    if (mouse_check_button_pressed(mb_left)) {
        // What to happen when clicked
        show_debug_message("click.");
		check_no = true;
    }
}

var mousex = device_mouse_x_to_gui(0); // GUI position of mouse's x coordinate
var mousey = device_mouse_y_to_gui(0); // GUI position of mouse's y coordinate
	
var yes_xx = 310; // x position of the GUI element (insted of 0)
var yes_yy = 130; // y position of the GUI element (insted of 0)
var ww = 50; // width of the GUI element (insted of 50)
var hh = 50; // height of the GUI element (insted of 50)
if (point_in_rectangle(mousex, mousey, yes_xx, yes_yy, yes_xx + ww, yes_yy + hh)) {
    // Check for mouse input
    if (mouse_check_button_pressed(mb_left)) {
        // What to happen when clicked
        show_debug_message("click.");
		game_begin = true;
    }
}

}

if check_yes == true{
	room_goto_next();
}

if check_no == true {
	draw_rectangle_color(75,230,315,255,c_blue,c_blue,c_blue,c_blue,false);
	draw_text(100,230,"Alright..How about now?");
	second_message = true
}

if second_message == true{
	yes_button = draw_rectangle_color(350,270,300,290,c_blue,c_blue,c_blue,c_blue,false);
	text = draw_text(310,270,"Yes")
	no_button = draw_rectangle_color(350,300,300,320,c_blue,c_blue,c_blue,c_blue,false);
	draw_text(310,300,"No");
	
var mousex = device_mouse_x_to_gui(0); // GUI position of mouse's x coordinate
var mousey = device_mouse_y_to_gui(0); // GUI position of mouse's y coordinate
	
var xx = 310; // x position of the GUI element (insted of 0)
var yy = 300; // y position of the GUI element (insted of 0)
var ww = 50; // width of the GUI element (insted of 50)
var hh = 50; // height of the GUI element (insted of 50)
if (point_in_rectangle(mousex, mousey, xx, yy, xx + ww, yy + hh)) {
    // Check for mouse input
    if (mouse_check_button_pressed(mb_left)) {
        // What to happen when clicked
        show_debug_message("cwick 2");
		last_message = true
    }
}

var mousex = device_mouse_x_to_gui(0); 
var mousey = device_mouse_y_to_gui(0); 
	
var yes_xx = 310; 
var yes_yy = 250; 
var ww = 50; 
var hh = 50; 
if (point_in_rectangle(mousex, mousey, yes_xx, yes_yy, yes_xx + ww, yes_yy + hh)) {
    if (mouse_check_button_pressed(mb_left)) {
        show_debug_message("click.");
		game_begin = true;
    }
}


}

if last_message == true{
	draw_rectangle_color(75,330,320,355,c_blue,c_blue,c_blue,c_blue,false);
	draw_text(100,330,"Too bad, we've gotta go!");
	if game_begin == false{
		game_begin = true;
	}
}
