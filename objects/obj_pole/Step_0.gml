/// @description Insert description here

//COMPRUEBA SI EXISTE PERRO Y LA DISTANCIA ENTRE PERRO Y POSTE
if(object_exists(obj_dog)){

	distance_to_dog = point_distance(obj_dog.x, obj_dog.y, x, y);
	
} 

//HABILIDAD DE OLER AL ACERCARSE A POSTE
if(distance_to_dog < 200 && obj_dog.can_smell == false){
	
	
	obj_dog.current_state = DOG_STATE.ALERT;
	instance_create_layer(x, y, "Instances_Back2", obj_day_night);
	if(part_type_exists(particleRain)){
		part_type_destroy(obj_particleSystem.particleRain);
	}
	
	//near = true;
	//audio_sound_gain(snd_escena1, 0, 600)
	
	}

//GANA HABILIDAD DE SALTAR SI PERRO HUELE CERCA DEL POSTE
if(distance_to_dog < 30 && obj_dog.current_state == DOG_STATE.SMELL){
	
	obj_dog.can_jump = true;
	
	if(instance_exists(obj_paper_image)){
	/*var paper_x = obj_paper_image.x;
	var paper_y = obj_paper_image.y;
	
	instance_destroy(obj_paper_image);
	*/
	instance_create_layer(obj_paper_image.x, obj_paper_image.y, "Instances", obj_paper_action);
	
	
	}
	
	
	}