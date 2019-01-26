/// @description Insert description here
sistemaRain = part_system_create();

particleRain = part_type_create();
part_type_shape(particleRain,pt_shape_line);
part_type_size(particleRain,0.05,0.2,0,0);
part_type_scale(particleRain,1,1);
part_type_color1(particleRain,c_blue);
part_type_alpha2(particleRain,0.4, 0);
part_type_speed(particleRain,2,2.5,0,0);
part_type_direction(particleRain,270,270,0,0);
part_type_gravity(particleRain,0.2,270);
part_type_orientation(particleRain,270,270,0,0,0);
//part_type_blend(particleRain,false);
part_type_life(particleRain,100,1280);
emitter1 = part_emitter_create(sistemaRain);

part_emitter_region(sistemaRain,emitter1,0,room_width,0,0,ps_shape_rectangle,ps_distr_linear);

particleExplosion = part_type_create();
part_type_shape(particleExplosion,pt_shape_explosion);
part_type_size(particleExplosion,0.10,0.10,0,0);
part_type_scale(particleExplosion,1,1);
part_type_color3(particleExplosion,65535,8454143,255);
part_type_alpha1(particleExplosion,1);
part_type_speed(particleExplosion,0.1,1,0.05,0.01);
part_type_direction(particleExplosion,0,359,0,0);
part_type_gravity(particleExplosion,0.02,270);
part_type_orientation(particleExplosion,0,359,5,10,1);
part_type_blend(particleExplosion,false);
part_type_life(particleExplosion,20,40);

alarm[0] = 25;