/// @description Gameplay

//PLAYER INPUT
scr_player_input();


//DIRECCIÓN DE MOVIMIENTO
var mov = key_right - key_left;

scr_dog_jump();

///ESTADOS DEL PERRO


//SALIENDO DE LA CAJA
if(current_state == DOG_STATE.OUT_BOX){
	
	scr_dog_outbox();
	
}


//SE CALCULA EL MOVIMIENTO
if(current_state != DOG_STATE.IN_BOX && current_state != DOG_STATE.OUT_BOX){
	
	hsp = sign(mov) * spd;
	vsp += grav;
}

scr_dog_collision();


//COLISION HORIZONTAL CON EL ENEMIGO RATA
if (place_meeting(x + hsp, y, obj_rat)) {
	room_restart();
}

//SE MUEVE LA POSICIÓN DEL PERRO CON LAS VARIABLES ANTERIORES
x += hsp;
y += vsp;




