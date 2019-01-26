/// @description Gameplay

//PLAYER INPUT
scr_player_input();


//DIRECCIÓN DE MOVIMIENTO
var mov = key_right - key_left;


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

//PERRO SE ACERCA A POSTE
if(current_state == DOG_STATE.ALERT){
	
	scr_dog_alert();
	
}



//SE CALCULA EL MOVIMIENTO
if(current_state != DOG_STATE.IN_BOX && current_state != DOG_STATE.OUT_BOX){
	
	hsp = sign(mov) * spd;
	vsp += grav;
}



//COLISIÓN VERTICAL Y HORIZONTAL CON EL PISO
if(place_meeting(x + hsp, y, obj_wall)){
	
	hsp = 0;

}

if(place_meeting(x, y + vsp, obj_wall)){
	
	vsp = 0;

}


//SE MUEVE LA POSICIÓN DEL PERRO CON LAS VARIABLES ANTERIORES
x += hsp;
y += vsp;




