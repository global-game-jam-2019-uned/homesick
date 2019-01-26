// CRECIMIENTO DEL small_car

if obj_dog_scene2.first_stop_light == 1 
{
	image_xscale += 0.001
	image_yscale += 0.001
	if image_xscale == 1.1
	{
		instance_create_layer(obj_small_car.x, obj_small_car.y, layer_get_id("back"), obj_small_car)
		instance_destroy()
	}
}