/// @description 
// Musica do jogo
if not audio_is_playing(snd_background) audio_play_sound(snd_background, 1, 1);
// End Game 
if not instance_exists(obj_player_destroy) and not instance_exists(obj_player){ game_restart(); global.speed_game = 1;}
// Gerando blocos 
if alarm[0] <= 0 alarm[0] = game_get_speed(gamespeed_fps)+4;
// Saindo fora caso o jogo nao tenha começado
if not global.start_game exit;
// Sistema de pontos e dificuldade
if points > increment { global.speed_game+=1; increment*=2;}
if not global.end_game { points+=global.speed_game/2; global.points = round(points);}
