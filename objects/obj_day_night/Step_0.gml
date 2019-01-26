/// @description Insert description here

if action=1
{
back1alpha-=.01; back2alpha+=.01;
if back1alpha=0
{
action=2;
}
}
if action=3
{
back1alpha+=.01; back2alpha-=.01;
if back1alpha=1
{
action=4;
}
}

/*
var lay_id = layer_get_id("Backgrounds_Night");
var back_id = layer_background_get_id(lay_id);
var alpha = layer_background_get_alpha(back_id);
alpha -= 0.001;
layer_background_alpha(back_id, alpha);
*/

/*
var lay_id = layer_get_id("Backgrounds_Night");
var back_id = layer_background_get_id(lay_id);*/
