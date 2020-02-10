/// @description Insert description here
// You can write your code in this editor

x = oPlayer.x;
y = oPlayer.y+10;

image_angle = point_direction(x, y, mouse_x, mouse_y);


if( image_angle < 270 && image_angle > 90 ) {
	image_yscale = -1;	
} else {
	image_yscale = 1;	
}

firingdelay --;
recoil = max(0, recoil - 1);

if( mouse_check_button(mb_left) && firingdelay < 0 ) {
	firingdelay = 5;
	recoil = 6;
	with( instance_create_layer(x,y, "Bullets", oBullet) ) { 
		// create instance of another object
		// works with w/e object is in instead...
		speed = 25;
		direction = other.image_angle + random_range(-3, 3); // other. -> original object
		image_angle = direction;	
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);
