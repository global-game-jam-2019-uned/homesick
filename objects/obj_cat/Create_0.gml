/// @description Insert description here
// You can write your code in this editor
randomize();
hspeed = choose(-1, 1);
alarm[0] = room_speed * (random_range(3, 10) / 1);
alarm[1] = room_speed * (random_range(5, 12) / 1);

//GRAVEDAD
grav = 1;

//VELOCIDAD HORIZONTAL Y VERTICAL
hsp = 0;
vsp = 0;

//BRINCO AUTOMATICO
jump = false;
