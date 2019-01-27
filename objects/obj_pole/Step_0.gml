/// @description Insert description here

//COMPRUEBA SI EXISTE PERRO Y LA DISTANCIA ENTRE PERRO Y POSTE
if(object_exists(obj_dog)){

	distance_to_dog = point_distance(obj_dog.x, obj_dog.y, x, y);
	
} 

//HABILIDAD DE OLER
if(distance_to_dog < 200 && obj_dog.can_smell == false){
	
	
	obj_dog.current_state = DOG_STATE.ALERT;
	//near = true;
	//audio_sound_gain(snd_escena1, 0, 600)
	
	}

if(distance_to_dog < 30 && obj_dog.current_state == DOG_STATE.SMELL){
	
	instance_create_layer(x - 20, y - 120, "Instances", obj_wall);
	obj_dog.can_jump = true;
	}