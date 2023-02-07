/// @description Create Enemy Ship
// 

// Inherit the parent event
event_inherited();

// Set random Direction
direction = random_range(0, 359);
// And point to random Direction
image_angle = direction;

// Set Speed
speed = 2;
// Set Original Speed
origSpeed = speed;

// Set Hitpoints
HP = 1;

// Max bullet to Fire, i.e. Fire rate
bulletCountdown = 0;
