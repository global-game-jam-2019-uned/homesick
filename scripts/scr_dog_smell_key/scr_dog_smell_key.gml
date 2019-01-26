//scr_dog_smell_key()

if(key_smell && can_smell && !on_air && current_state != DOG_STATE.ALERT){
	current_state = DOG_STATE.SMELL;
	
	spd = 0;
	alarm[0] = 60;
}