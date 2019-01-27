/// @description Insert description here

//SE DESTRUYE CUANDO LO TOCA PERRO
if(place_meeting(x, y, obj_dog)){
	paper_obtained = true;
	audio_play_sound(snd_cartelarrugadovolando, 1, false);
	
}

if(paper_obtained && !paper_flying){
	part_particles_create(obj_particleSystem.sistemaRain, x, y, obj_particleSystem.paperDust, 10);
	paper_flying = true;
	alarm[0] = 30;
	
}

if(paper_flying){
	part_particles_create(obj_particleSystem.sistemaRain, x, y, obj_particleSystem.paperDust, 10);
}

