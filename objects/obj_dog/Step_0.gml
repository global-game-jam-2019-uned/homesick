/// @description Gameplay

//PLAYER INPUT
scr_player_input();


//DIRECCIÓN DE MOVIMIENTO
var mov = key_right - key_left;

if(can_jump){scr_dog_jump();}

scr_dog_smell_key();

///ESTADOS DEL PERRO

//MIENTRAS ESTÁ EN LA CAJA
if(current_state == DOG_STATE.IN_BOX){
	
	scr_dog_inbox();
}


//SALIENDO DE LA CAJA
if(current_state == DOG_STATE.OUT_BOX){
	
	scr_dog_outbox();
	
	
}

//PERRO SE ACERCA A POSTE
if(current_state == DOG_STATE.ALERT){
	/*
	if(!can_smell){
		can_smell = true;
		alarm[0] = 180;
	}
	hsp = 0;
*/
	scr_dog_alert();
	
}


//CAMINANDO TRISTE VELOCIDAD = 1
if(current_state == DOG_STATE.SAD_WALK){
	
	grav = 1;
	spd = 1;
}

if(current_state == DOG_STATE.NORMAL_WALK){
	
	spd = 3;
	
	
}





//SE CALCULA EL MOVIMIENTO
if(current_state != DOG_STATE.IN_BOX && current_state != DOG_STATE.OUT_BOX && current_state != DOG_STATE.ALERT){
	
	hsp = sign(mov) * spd;
	vsp += grav;
}



//COLISIÓN VERTICAL Y HORIZONTAL CON EL PISO
if(place_meeting(x + hsp, y, obj_wall)){
	
	hsp = 0;

}

if(place_meeting(x, y + vsp, obj_wall)){
	on_air = false;
	vsp = 0;

}


//SE MUEVE LA POSICIÓN DEL PERRO CON LAS VARIABLES ANTERIORES
x += hsp;
y += vsp;




