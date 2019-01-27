///scr_dog_outbox()
//Perro salta de la caja y cae al piso

vsp += grav;


if(place_meeting(x, y + vsp, obj_wall)){
	
	hsp = 0;
	current_state = DOG_STATE.SAD_WALK;
	
}