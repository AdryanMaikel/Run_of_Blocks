/// @description 
// 
if not global.start_game { exit;};
if points > increment {
	global.speed_game-=1;
	increment *= 2;
}
points-=global.speed_game/2;
global.points = round(points);
if alarm[0] <= 0 alarm[0] = game_get_speed(gamespeed_fps)+4;