/// @description 
//
#region Movimentação
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));
//setando velocidade vertical
speed_y = (_down - _up) * speed_player;
if _up or _down global.start_game = true;
#endregion

#region Colisão e atribuindo velocidade ao x e y
if place_meeting(x-obj_block_run.hspeed, y, obj_block_run) speed_x = obj_block_run.hspeed; else speed_x=0;

if place_meeting(x, y, obj_end_game)
or place_meeting(x, y, obj_end_game_top)
or place_meeting(x, y, obj_end_game_bot)
/*x < -sprite_width/2*/ 
{ // perdeu /*game_restart();*/ 
	global.start_game = false; global.speed_game = 1;
	if global.points > global.record global.record = global.points;
	repeat 100 instance_create_layer(x+irandom_range(0,32), y+irandom_range(0,32),"Instances", obj_player_destroy);
	instance_destroy();
} // end game
x+=speed_x;
if place_meeting(x-obj_block_run.hspeed, y+speed_y, obj_block_run) speed_y = 0;
y+=speed_y;
#endregion

