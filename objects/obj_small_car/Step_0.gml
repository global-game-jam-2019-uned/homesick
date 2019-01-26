/// @description Inserte aquí la descripción

growing = true
scale = 0.1
while (growing)
{
	image_xscale += 0.1
	image_yscale += 0.1
	if scale < 21
		growing = false
	scale += scale
}
