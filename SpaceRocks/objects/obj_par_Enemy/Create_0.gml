/// @description Create Enemy Ship
// 

// Inherit the parent event
event_inherited();

// Set Hitpoints
HP = 1;
// Set Speed
speed = 2;

// Set random Direction
direction = random_range(0, 359);
// And point to random Direction
image_angle = direction;

