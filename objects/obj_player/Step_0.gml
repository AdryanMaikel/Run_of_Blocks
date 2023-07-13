/// @description Movimentação e colisão
//
#region Movimentação
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));
//setando velocidade vertical
speed_y = (_down - _up) * speed_player;
if _up or _down global.start_game = true;
#endregion

#region Colisão e atribuindo velocidade ao x
if place_meeting(x-obj_block.hspeed, y, obj_block) speed_x = obj_block.hspeed; else speed_x=0;
// Colisões com os espinhos do topo de baixo e da lateral
if place_meeting(x, y, obj_end_game)
or place_meeting(x, y, obj_end_game_top)
or place_meeting(x, y, obj_end_game_bot)
{ // perdeu 
	global.start_game = false;
	if global.points > global.record global.record = global.points;
	repeat 100 instance_create_layer(x+irandom_range(0,32), y+irandom_range(0,32),"Instances", obj_player_destroy);
	audio_play_sound(snd_destroy,1,false);
	instance_destroy();
} // end game
x+=speed_x;
// Colisão vertical
if place_meeting(x-obj_block.hspeed, y+speed_y, obj_block) speed_y = 0;
y+=speed_y;
#endregion

