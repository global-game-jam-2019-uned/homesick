/// @description Gameplay

//PLAYER INPUT
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));

//DIRECCIÓN DE MOVIMIENTO
var mov = key_right - key_left;

//CANTIDAD DE MOVIMIENTO HORIZONTAL
hsp = mov * spd;



if(current_state == DOG_STATE.IN_BOX){
	if(keyboard_check(vk_anykey)){
		current_state = DOG_STATE.OUT_BOX;	
	}

}


//SE MUEVE LA POSICIÓN DEL PERRO CON LAS VARIABLES ANTERIORES
x += hsp;





