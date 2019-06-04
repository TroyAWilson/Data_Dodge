/// @description Insert description here
// You can write your code in this editor
if obj_dude.game_win == false && obj_dude.game_lose == false{
alarm[0] = room_speed;
seed = random_range(50,350)
seed2 = random_range(50,350)
instance_create_depth(seed,-25,-9999,obj_proj);

if ai_timer > 1000 {
	instance_create_depth(seed2,-25,-9999,obj_proj);
}
}