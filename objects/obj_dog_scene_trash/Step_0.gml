/// @description Gameplay

//PLAYER INPUT
scr_player_input();


//DIRECCIÓN DE MOVIMIENTO
var mov = key_right - key_left;

if (key_up && !on_air) {
	vsp -= 16;
	on_air = true;
}


///ESTADOS DEL PERRO

//MIENTRAS ESTÁ EN LA CAJA
if(current_state == DOG_STATE.IN_BOX){
	
	scr_dog_inbox();
}


//SALIENDO DE LA CAJA
if(current_state == DOG_STATE.OUT_BOX){
	
	scr_dog_outbox();
	
}


//SE CALCULA EL MOVIMIENTO
if(current_state != DOG_STATE.IN_BOX && current_state != DOG_STATE.OUT_BOX){
	
	hsp = sign(mov) * spd;
	vsp += grav;
}


//COLISIÓN HORIZONTAL CON EL PISO
if(place_meeting(x + hsp, y, obj_wall)){
	
	hsp = 0;

}

//COLISIÓN VERTICAL CON EL PISO
if(place_meeting(x, y + vsp, obj_wall)){
	on_air = false;
	vsp = 0;

}

//COLISIÓN VERTICAL CON EL PISO
if(place_meeting(x, y + vsp, obj_platform)){
	on_air = false;
	vsp = 0;

}

//COLISIÓN HORIZONTAL CON EL PISO
if(place_meeting(x + hsp, y, obj_platform)){
	hsp = 0;
}

if(place_meeting(x + hsp, y + vsp, obj_platform)){
	hsp = 0;
	vsp = 0;
}



//COLISION HORIZONTAL CON EL ENEMIGO RATA
if (place_meeting(x + hsp, y, obj_rat)) {
	room_restart();
}

//SE MUEVE LA POSICIÓN DEL PERRO CON LAS VARIABLES ANTERIORES
x += hsp;
y += vsp;




