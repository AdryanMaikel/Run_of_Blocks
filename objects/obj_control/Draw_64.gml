/// @description
// 
draw_set_color(c_white);
draw_set_font(fnt_press_start);
draw_text(20, 5, "Placar : "+string(global.points));
draw_set_color(-1);
if not global.start_game {
	draw_text(100,235, "Aperte W ou S para começar!");
}