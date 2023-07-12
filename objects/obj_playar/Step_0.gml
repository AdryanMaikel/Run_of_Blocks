/// @description 
//
#region Movimentação
var _up,_left, _down, _right;
_up = keyboard_check(input.up);
_left = keyboard_check(input.left);
_down = keyboard_check(input.down);
_right = keyboard_check(input.right);
//setando velocidade horizontal e vertical
speed_x = (_right - _left) * speed_player;
speed_y = (_down - _up) * speed_player;

#endregion
#region Colisão e atribuindo velocidade ao x e y
if place_meeting(x+speed_x-obj_block.hspeed, y, obj_block) { speed_x = obj_block.hspeed;}
x+=speed_x;
if place_meeting(x, y+speed_y, obj_block) speed_y = obj_block.vspeed;
y+=speed_y;
#endregion


