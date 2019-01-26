//scr_dog_inbox

//Perro empieza a salir de la caja al apretar una tecla
if(keyboard_check(vk_anykey)){
	hsp = 1;
	vsp -= 2;
	current_state = DOG_STATE.OUT_BOX;	
}