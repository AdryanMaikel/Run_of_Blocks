/// @description Insert description here
// You can write your code in this editor

// This will the button bg
draw_self();

// Inherit the parent event (draw text on top)
event_inherited();

// This will draw the trigger key (this key can be used to trigger the button)
if (triggerKey != undefined) {
	draw_set_halign(fa_right);
	draw_text(bbox_left - 5, y, "[" + chr(triggerKey) + "]");
	
	// Reset text alignment
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)	
}
