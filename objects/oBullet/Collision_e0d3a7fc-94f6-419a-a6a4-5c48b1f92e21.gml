/// @description Insert description here
// You can write your code in this editor
with ( other ) { // returns colliding thing - so enemy
	hp --;
	flash = 3;
	hitfrom = other.direction;
//	x += lengthdir_x(2, hitfrom);
//	y -= lengthdir_y(2, hitfrom);
}

instance_destroy();