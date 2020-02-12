/// @description Insert description here
// You can write your code in this editor


if( flash > 0 ) {
	shader_set(shWhite);
	flash --;
} 
draw_self();
shader_reset();
