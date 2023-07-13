/// @description
// Desenhando o placar e o recorde
draw_set_color(c_white);
draw_set_font(fnt_press_start);
draw_text(40, 30, "Placar : "+string(global.points));
draw_text(40, 528, "Record : "+string(global.record));
draw_set_color(-1);
// desenhando as instruções para começar o jogo
if not global.start_game and instance_exists(obj_player) {
	draw_text(100,235, "Aperte W ou S para começar!");
}
// Desenhando tela de derrota
if not instance_exists(obj_player) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_red);
	draw_text(room_width/2,room_height/2,"Você perdeu!");
	draw_set_color(c_blue);
	draw_set_halign(-1);
	draw_set_valign(-1);
	draw_text(room_width/2, 30,"Created by Adryan Maikel!");
	draw_set_color(-1);
}