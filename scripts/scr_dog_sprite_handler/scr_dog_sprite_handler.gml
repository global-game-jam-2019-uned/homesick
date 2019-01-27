//scr_dog_sprite_handler();

//CHEQUEA QUE NO HAY OBJETO DEBAJO Y QUE NO ESTE EN LA CAJA
if(place_empty(x, y + 5) && current_state != DOG_STATE.IN_BOX){
	
	//SI SUBE SPRITE DE SALTO HACIA ARRIBA
	if(sign(vsp) < 0){
		
		sprite_index = spr_dog_jump_up1;
		//COMIENZA A ANIMAR SI NO HA EMPEZADO
		if(image_index <= 1){
			image_speed = 1;
		}
		//CUANDO LLEGA AL FINAL DE LA ANIMACION DEJA DE ANIMAR CASO CONTRARIO SIGUE ANIMANDO
		if(image_index >= 1 && image_index < 2){
			image_speed = 0;
		} else {image_speed = 1;}
	} 
	
	//SI BAJA SPRITE DE CAIDA
	if(sign(vsp) > 0){
		//COMIENZA A ANIMAR SI NO HA EMPEZADO
		sprite_index = spr_dog_jump_up1;
		if(image_index <= 1){
			image_speed = 1;
		}
		//CUANDO LLEGA AL FINAL DE LA ANIMACION DEJA DE ANIMAR CASO CONTRARIO SIGUE ANIMANDO
		if(image_index >= 1 && image_index < 2){
			image_speed = 0;
		} else {image_speed = 1;}
	}
	
	//SI VELOCIDAD ES CERO RESETEA INDEX DE SPRITE
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

//INVIERTE DIRECCIÓN DE SPRITE DEPENDIENDO DE DIRECCIÓN DE VELOCIDAD
if(sign(hsp) != 0){
	image_xscale = sign(hsp);
}