/// @description Insert description here
// You can write your code in this editor
if(audio_is_playing(cat_sound)){
	audio_stop_sound(cat_sound)
}

cat_sound = snd_gato1;


audio_play_sound(cat_sound, 1, false);

alarm[0] = room_speed * (random_range(7, 25) / 1);