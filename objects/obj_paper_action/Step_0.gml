/// @description Insert description here

//SE DESTRUYE CUANDO LO TOCA PERRO
if(place_meeting(x, y, obj_dog)){
	part_particles_create(obj_particleSystem.sistemaRain, x, y, obj_particleSystem.paperDust, 20);
	instance_destroy();
}

