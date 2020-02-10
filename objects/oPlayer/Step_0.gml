// get player input
// use || to use different control schemes

key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

// Vars last for one frame
// Calc move
var move = key_right - key_left;
onFloor = place_meeting(x, y+1, oWall) 

hsp = move * walksp;   
 
vsp = vsp + grv;

if ( onFloor &&  key_jump ) {
	vsp = -5;
}

// Horizontal collision
if ( place_meeting( x + hsp, y, oWall )) {
	while(!place_meeting( x + sign(hsp), y, oWall ) ) {
		x += sign(hsp);
	}
	// hsp = 0
} else {
	x += hsp;
}



// Vertical collison
if ( place_meeting( x, y + vsp, oWall )) {
	while(!place_meeting( x, y + sign(vsp), oWall ) ) {
		y += sign(vsp);
	}
	vsp = 0;
} else {
	y += vsp;
}


// Animation
// Green = property of obj.
if( !onFloor ) {
	sprite_index = sPlayerA;
	image_speed = 0;
	
	if( sign(vsp) > 0 ) {
		image_index = 1;
	} else {
		image_index = 0;
	}
} else {
	image_speed = 1;
	if( hsp == 0 ) {
		sprite_index = sPlayer;
	} else {
		sprite_index = sPlayerR;
	}	
}

if(hsp != 0) {
	image_xscale = sign(hsp);
}