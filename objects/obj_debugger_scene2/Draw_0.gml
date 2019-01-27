/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_halign (fa_left);
draw_set_valign (fa_top);
draw_set_font (fnt_text);
draw_set_color (c_red)

if (instance_exists( obj_dog_scene2)) {
	draw_text(obj_dog_scene2.x,50,"vspeed" + string(obj_dog_scene2.vspeed));
	draw_text(obj_dog_scene2.x,70,"gravity" + string(obj_dog_scene2.gravity));
	draw_text(obj_dog_scene2.x,90,"x = " + string(obj_dog_scene2.x));
	draw_text(obj_dog_scene2.x,110,"y = " + string(obj_dog_scene2.y));
}