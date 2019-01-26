/// @description Insert description here

//COMPRUEBA SI EXISTE PERRO Y LA DISTANCIA ENTRE PERRO Y POSTE
if(object_exists(obj_dog_scene2)){

	distance_to_dog = point_distance(obj_dog_scene2.x, obj_dog_scene2.y, x, y);

} /*else {distance_to_dog = 300;}*/