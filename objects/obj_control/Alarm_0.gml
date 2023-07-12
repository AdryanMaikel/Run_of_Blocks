/// @description 
// 
repeat(30) {
	var _positions_blocks_y = (irandom_range(2,room_height/32)-1)*obj_block_run.sprite_height;
	instance_create_layer(room_width, _positions_blocks_y, "Instances", obj_block_run);
poladoful

}
