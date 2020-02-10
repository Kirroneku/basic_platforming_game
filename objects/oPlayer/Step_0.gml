// get player input

key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_up);

// Vars last for one frame
// Calc move
var move = key_right - key_left;

hsp = move * walksp;   
 
vsp = min(vsp + grv, 9.8);
if ( place_meeting(x, y+1, oWall) ) {
	vsp = 0.1;
}
if ( place_meeting(x, y+1, oWall) && ( key_jump )) {
	vsp = -7;
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
	while(!place_meeting( x, y+ sign(vsp), oWall ) ) {
		y += sign(vsp);
	}
	// hsp = 0
} else {
	y += vsp;
}