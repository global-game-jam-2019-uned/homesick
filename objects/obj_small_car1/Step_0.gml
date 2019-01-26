// CRECIMIENTO DEL small_car
image_xscale += 0.001
image_yscale += 0.001
if image_xscale == 1.1
{
	instance_create_layer(obj_small_car1.x, obj_small_car1.y, layer_get_id("back"), obj_small_car1)
	instance_destroy()
}