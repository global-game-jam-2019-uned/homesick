/// @description Insert description here

//COMPRUEBA SI EXISTE PERRO Y LA DISTANCIA ENTRE PERRO Y POSTE
if(object_exists(obj_dog)){

	distance_to_dog = point_distance(obj_dog.x, obj_dog.y, x, y);
	
} 

//JA EL VOLUMEN SI EL PERRO ESTÁ CERCA
if(distance_to_dog < 200){
	
	draw_text_color(obj_dog.x, obj_dog.y - 40, " /¡! ", c_green,0,0,0,1);
	
	}