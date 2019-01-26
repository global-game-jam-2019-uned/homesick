/// @description Gameplay

//PLAYER INPUT
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));

//DIRECCIÓN DE MOVIMIENTO
var mov = key_right - key_left;




if(current_state == DOG_STATE.IN_BOX){
	if(keyboard_check(vk_anykey)){
		hsp = 1;
		vsp -= 2;
		current_state = DOG_STATE.OUT_BOX;	
	}

}

if(current_state == DOG_STATE.OUT_BOX){
	
	vsp += grav;
	if(place_meeting(x, y + vsp, obj_wall)){
	
	hsp = 0;
	current_state = DOG_STATE.IDDLE;
	
	}
	
}

if(current_state != DOG_STATE.IN_BOX && current_state != DOG_STATE.OUT_BOX){
	
	hsp = mov * spd;
	vsp += grav;
}


//CANTIDAD DE MOVIMIENTO HORIZONTAL Y VERTICAL



//COLISIÓN VERTICAL CON EL PISO
if(place_meeting(x, y + vsp, obj_wall)){
	
	vsp = 0;

}


//SE MUEVE LA POSICIÓN DEL PERRO CON LAS VARIABLES ANTERIORES
x += hsp;
y += vsp;




