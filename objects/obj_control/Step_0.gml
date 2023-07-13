/// @description 
// 
if not instance_exists(obj_player_destroy) and not instance_exists(obj_player){ game_restart(); global.speed_game = 1;}
if alarm[0] <= 0 alarm[0] = game_get_speed(gamespeed_fps)+4;
if not global.start_game { exit;};
if points > increment { global.speed_game+=1; increment *= 2;}
if not global.end_game {
	points+=global.speed_game/2;
	global.points = round(points);
	exit;
}
