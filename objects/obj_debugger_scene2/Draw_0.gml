/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_set_halign (fa_left);
draw_set_valign (fa_top);
draw_set_font (fnt_text);
draw_set_color (c_red)

if (instance_exists( obj_dog_scene2)) {
	draw_text(50,50,"vspeed" + string(obj_dog_scene2.vspeed));
	draw_text(50,70,"gravity" + string(obj_dog_scene2.gravity));
	draw_text(50,90,"x = " + string(obj_dog_scene2.x));
	draw_text(50,110,"y = " + string(obj_dog_scene2.y));
}