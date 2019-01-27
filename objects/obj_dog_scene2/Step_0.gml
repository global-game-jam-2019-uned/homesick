/// @description Gameplay

//PLAYER INPUT
scr_player_input();


//DIRECCIÓN DE MOVIMIENTO
var mov = key_right - key_left;

scr_dog_jump();


///ESTADOS DEL PERRO

//MIENTRAS ESTÁ EN LA CAJA
if(current_state == DOG_STATE.IN_BOX){
	
	scr_dog_inbox();
}


//SALIENDO DE LA CAJA
if(current_state == DOG_STATE.OUT_BOX){
	
	scr_dog_outbox();
	
}

//CAMINANDO TRISTE VELOCIDAD = 1
if(current_state == DOG_STATE.SAD_WALK){
	spd = 1;
}



//SE CALCULA EL MOVIMIENTO
if(current_state != DOG_STATE.IN_BOX && current_state != DOG_STATE.OUT_BOX){
	
	hsp = sign(mov) * spd;
	vsp += grav;
}

scr_dog_collision()


//COLISION CON CARRO PEQUENNO
if place_meeting(x, y, obj_small_car) && first_stop_light == 1
	room_restart()

if place_meeting(x, y, obj_stop_light_button) && keyboard_check(vk_control)
{
	first_stop_light = 0
	audio_sound_gain(snd_escena2parte1, 0, 100)
	alarm[1] = 100
	audio_stop_sound(snd_escena2parte1)
}

//SE MUEVE LA POSICIÓN DEL PERRO CON LAS VARIABLES ANTERIORES
x += hsp;
y += vsp;

scr_dog_scene_2_step_collision_car1()

scr_dog_scene_2_bridge_collisions()

if place_meeting(x, y, obj_bus)
	room_restart()
///MANEJO DE SPRITES ANIMADOS
scr_dog_sprite_handler();
