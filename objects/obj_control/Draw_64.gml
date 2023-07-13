/// @description
// 
draw_set_color(c_white);
draw_set_font(fnt_press_start);
draw_text(40, 20, "Placar : "+string(global.points));
draw_text(40, 538, "Record : "+string(global.record));
draw_set_color(-1);
if not global.start_game and instance_exists(obj_player) {
	draw_text(100,235, "Aperte W ou S para começar!");
}