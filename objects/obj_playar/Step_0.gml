/// @description 
//
#region Movimentação
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));
//setando velocidade vertical
speed_y = (_down - _up) * speed_player;
#endregion

#region Colisão e atribuindo velocidade ao x e y
if place_meeting(x-obj_block_run.hspeed, y, obj_block_run) speed_x = obj_block_run.hspeed; else speed_x=0;
if x < -sprite_width/2 game_restart(); // end game
x+=speed_x;
if place_meeting(x-obj_block_run.hspeed, y+speed_y, obj_block_run) or place_meeting(x, y+speed_y, obj_block_room) speed_y = 0;
y+=speed_y;
#endregion

