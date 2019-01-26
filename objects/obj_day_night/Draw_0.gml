/// @description Insert description here

if back1alpha>0
{

var lay_id = layer_get_id("Backgrounds_Night");
var back_id = layer_background_get_id(lay_id);
var alpha = layer_background_get_alpha(back_id);
layer_background_alpha(back_id, back1alpha);

}
if back2alpha>0
{

var lay_id = layer_get_id("Backgrounds_Day");
var back_id = layer_background_get_id(lay_id);
var alpha = layer_background_get_alpha(back_id);
layer_background_alpha(back_id, back2alpha);

}

