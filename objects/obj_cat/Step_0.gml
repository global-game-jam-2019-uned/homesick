/// @description Insert description here
// You can write your code in this editor

vsp += grav;

if (jump) {
	vsp -= 16;
	jump = false;
}

if (place_meeting(x, y - obj_dog_scene_trash.vsp, obj_dog_scene_trash)) {
	instance_destroy();
}


//COLISIÓN VERTICAL CON LA PLATAFORMA
if(place_meeting(x, y + vsp, obj_platform)){
	vsp = 0;
}

//COLISIÓN HORIZONTAL CON LA PLATAFORMA
if(place_meeting(x + hsp, y, obj_platform)){
	hsp = 0;
}

//COLISIÓN CON LA PLATAFORMA
if(place_meeting(x + hsp, y + vsp, obj_wall)){
	hsp = 0;
	vsp = 0;
}

//COLISIÓN VERTICAL CON EL PISO
if(place_meeting(x, y + vsp, obj_wall)){
	vsp = 0;
}

//COLISIÓN HORIZONTAL CON EL PISO
if(place_meeting(x + hsp, y, obj_wall)){
	hsp = 0;
	hspeed *= -1;
}

//COLISIÓN CON EL PISO
if(place_meeting(x + hsp, y + vsp, obj_wall)){
	hsp = 0;
	vsp = 0;
}

// COLISION CON EL JUGADOR AL CAER
if (place_meeting(x, y + vsp, obj_dog_scene_trash)) {
	room_restart();	
}

// GRAVEDAD DE LA RATA
y += vsp;