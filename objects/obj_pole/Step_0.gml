/// @description Insert description here

//COMPRUEBA SI EXISTE PERRO Y LA DISTANCIA ENTRE PERRO Y POSTE
if(object_exists(obj_dog)){

	distance_to_dog = point_distance(obj_dog.x, obj_dog.y, x, y);
	
} 

//JA EL VOLUMEN SI EL PERRO ESTÁ CERCA
if(distance_to_dog < 200){
	
	//near = true;
	//audio_sound_gain(snd_escena1, 0, 600)
	
	}