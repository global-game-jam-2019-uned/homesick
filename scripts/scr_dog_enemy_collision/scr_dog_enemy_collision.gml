//COLISION HORIZONTAL CON EL ENEMIGO RATA
if (place_meeting(x + hsp, y, obj_rat)
	|| place_meeting(x + hsp, y, obj_cat)
) {
	with(other) {
		vsp -= 15;
	}
	room_restart();
}