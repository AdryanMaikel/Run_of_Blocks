/// @description 
// Destruindo os blocos
if place_meeting(x, y, obj_end_game){ 
	repeat 100 instance_create_layer(x+irandom_range(0,32),y+irandom_range(0,32), "Instances", obj_block_destroy);
	instance_destroy();
}