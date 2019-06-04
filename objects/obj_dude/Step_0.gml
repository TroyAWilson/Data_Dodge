/// @description Insert description here
// You can write your code in this editor
obj_dude.x = mouse_x;
obj_dude.y = mouse_y;

if obj_dude.y > 550 {
	obj_dude.y = 550;
}


if place_meeting(x,y,obj_proj){
	dead_one = instance_nearest(x,y,obj_proj)
	
	with dead_one {
		instance_destroy();
	}
	
	player_hp--;
	if player_hp <= 0 {
		game_lose = true;
	}
}