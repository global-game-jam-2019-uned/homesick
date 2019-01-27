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


///MANEJO DE SPRITES ANIMADOS
/*
if(on_air == true && vsp < 0){
	sprite_index = spr_dog_jump_up1;
	if(image_index >= 1 && image_index < 2){
		image_speed = 0;
	}
}*/


if(place_empty(x, y + 5) && current_state != DOG_STATE.IN_BOX){
	
	if(sign(vsp) < 0){
		
		sprite_index = spr_dog_jump_up1;
		if(image_index <= 1){
			image_speed = 1;
		}
		if(image_index >= 1 && image_index < 2){
			image_speed = 0;
		} else {image_speed = 1;}
	} 
	
	if(sign(vsp) > 0){
		sprite_index = spr_dog_jump_up1;
		if(image_index <= 1){
			image_speed = 1;
		}
		if(image_index >= 1 && image_index < 2){
			image_speed = 0;
		} else {image_speed = 1;}
	}
	
	if(vsp == 0){image_index = 0;}	
	
	
} else {

	//if(vsp == 0){image_index = 0;}
	image_speed = 1;

	switch(current_state){
	
		case DOG_STATE.SAD_WALK: 
			sprite_index = spr_dog_jump_up1;
			break;
		case DOG_STATE.NORMAL_WALK: 
			sprite_index = spr_dog_jump_up1;
			break;
		case DOG_STATE.ALERT: 
		case DOG_STATE.SMELL: 
			sprite_index = spr_box;
			break;

	}

	if(hsp == 0 && current_state != DOG_STATE.SMELL && current_state != DOG_STATE.ALERT){image_speed = 0; image_index = 0;}
	if(key_up && can_jump){image_index = 0;}
	
}



/*
//MANEJO DE ANIMACIONES SPRITES
if(!place_meeting(x, y + 1, obj_wall)){
	sprite_index = spr_playerJ;
	image_speed = 0
	
	if(sign(vsp) < 0){image_index = 1} else {image_index = 0}

} else {
	
	image_speed = 1;
	
	if(sign(hsp) == 0){
		sprite_index = spr_playerS;
	} else {
		sprite_index = spr_playerR;
	}
}*/

//INVIERTE DIRECCIÓN DE SPRITE DEPENDIENDO DE DIRECCIÓN DE VELOCIDAD
if(sign(hsp) != 0){
	image_xscale = sign(hsp);
}

