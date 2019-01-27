/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if place_meeting(x, y, obj_dog_scene2) && instance_number(obj_bus) < 1
{
	instance_create_layer(x - 800, 540, layer_get_id("Instances_1"), obj_bus)
	audio_sound_gain(snd_escena2parte2, 0, 50)
	alarm[0] = 50
	audio_stop_sound(snd_escena2parte2)
}