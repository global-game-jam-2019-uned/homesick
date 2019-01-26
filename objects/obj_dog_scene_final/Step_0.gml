/// @description Gameplay

//PLAYER INPUT
scr_player_input();


//DIRECCIÓN DE MOVIMIENTO
var mov = key_right - key_left;

if (key_up && !on_air) {
	vsp -= 15;
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

//CAMINANDO TRISTE VELOCIDAD = 1
if(current_state == DOG_STATE.SAD_WALK){
	
	spd = 1;
}



//SE CALCULA EL MOVIMIENTO
if(current_state != DOG_STATE.IN_BOX && current_state != DOG_STATE.OUT_BOX){
	
	hsp = sign(mov) * spd;
	vsp += grav;
}



//COLISIÓN VERTICAL CON EL PISO
if(place_meeting(x, y + vsp, obj_wall)){
	vsp = 0;
	on_air = false;
	vsp = 0;

}


//SE MUEVE LA POSICIÓN DEL PERRO CON LAS VARIABLES ANTERIORES
x += hsp;
y += vsp;




