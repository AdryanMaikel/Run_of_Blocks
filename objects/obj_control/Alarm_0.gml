/// @description 
// Gerando blocos conforme a velocidade do jogo
repeat(global.speed_game) {
	var _random_positions_blocks_y = (irandom_range(3, room_height/32)-2)*obj_block.sprite_height;
	instance_create_layer(room_width, _random_positions_blocks_y, "Instances", obj_block);
}