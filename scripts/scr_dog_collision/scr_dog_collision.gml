//COLISIÓN HORIZONTAL CON EL PISO
if(place_meeting(x + hsp, y, obj_wall)){
	
	hsp = 0;

}

//COLISIÓN VERTICAL CON EL PISO
if(place_meeting(x, y + vsp, obj_wall)){
	on_air = false;
	vsp = 0;
}

//COLISIÓN VERTICAL CON EL PISO
if(place_meeting(x, y + vsp, obj_platform)){
	on_air = false;
	vsp = 0;

}

//COLISIÓN HORIZONTAL CON EL PISO
if(place_meeting(x + hsp, y, obj_platform)){
	hsp = 0;
}

if(place_meeting(x + hsp, y + vsp, obj_platform)){
	hsp = 0;
	vsp = 0;
}