//scr_cat_sprite_handler();


if(vsp != 0){
	sprite_index = spr_cat_jump;
} else {
	
	sprite_index = spr_cat_run;
	
}




//INVIERTE DIRECCIÓN DE SPRITE DEPENDIENDO DE DIRECCIÓN DE VELOCIDAD
if(sign(hspeed) != 0){
	image_xscale = sign(hspeed)*-1;
}