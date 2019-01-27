/// @description Insert description here

draw_self();

/*if(object_exists(obj_dog)){

	distance_to_dog = point_distance(obj_dog.x, obj_dog.y, x, y);
	
}*/

if(distance_to_dog < 200){
	
	draw_text_color(x, y - 40, point_distance(obj_dog.x, obj_dog.y, x, y), c_green,0,0,0,1);
	
	draw_text_color(obj_dog.x, obj_dog.y - 40, " /¡! ", c_green,0,0,0,1);
	}


