/// @description Insert description here

//SE DESTRUYE CUANDO LO TOCA PERRO
if(place_meeting(x, y, obj_dog)){
	paper_obtained = true;
	
}

if(paper_obtained && !paper_flying){
	part_particles_create(obj_particleSystem.sistemaRain, x, y, obj_particleSystem.paperDust, 10);
	paper_flying = true;
	alarm[0] = 30;
	
}


