/// @description Insert description here
// You can write your code in this editor

vsp += grav;

if (place_meeting(x, y - obj_dog_scene_trash.vsp, obj_dog_scene_trash)) {
	instance_destroy();
}



//COLISIÓN VERTICAL
if(place_meeting(x, y + vsp, obj_wall)
	|| place_meeting(x, y + vsp, obj_platform)
	|| place_meeting(x, y + vsp, obj_enemy_collision)){
	vsp = 0;
}

//COLISIÓN HORIZONTAL
if(place_meeting(x + hsp, y, obj_wall) 
	|| place_meeting(x + hsp, y, obj_platform)
	|| place_meeting(x + hsp, y, obj_enemy_collision)){
	hsp = 0;
	hspeed *= -1;
}

//COLISIÓN
if(place_meeting(x + hsp, y + vsp, obj_wall)
	|| place_meeting(x + hsp, y + vsp, obj_platform)
	|| place_meeting(x + hsp, y + vsp, obj_enemy_collision)){
	hsp = 0;
	vsp = 0;
}


// GRAVEDAD DE LA RATA
y += vsp;