/// @description Insert description here

if(place_meeting(x, y, obj_dog) && !player_touch){
	player_touch = true;
	alarm[0] = 180;
}

if(place_meeting(x, y, obj_dog_scene2) && !player_touch){
	player_touch = true;
	alarm[0] = 180;
}

if(place_meeting(x, y, obj_dog_scene_trash) && !player_touch){
	player_touch = true;
	alarm[0] = 180;
}

if(place_meeting(x, y, obj_dog_scene_final) && !player_touch){
	player_touch = true;
	alarm[0] = 180;
}


if(audio_is_playing(snd_escena1)){
	if(player_touch){
	audio_sound_gain(snd_escena1, 0, 600);
	
	}
}

