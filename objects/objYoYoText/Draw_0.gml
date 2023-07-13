
// Set text properties
draw_set_valign(valign);
draw_set_halign(halign);
draw_set_font(font);
draw_set_color(color);

draw_text(x, y, text);

// Reset text alignment
draw_set_valign(fa_top);
draw_set_halign(fa_left);

