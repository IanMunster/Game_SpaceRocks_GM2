/// @description Insert description here
// You can write your code in this editor

// 1in6 chance
if (irandom_range(0,5) == 0) {
	instance_create_layer(x,y, "Instances", obj_PowerUp);
}