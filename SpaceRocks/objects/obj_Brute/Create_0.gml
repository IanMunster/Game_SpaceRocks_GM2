/// @description 


// Inherit the parent event
event_inherited();

// Set Hitpoints
HP = 5;
// immune to Laser
immuneToLaser = true;

// Set Speed
speed = 1;
// Set Original Speed
origSpeed = speed;


// Set Sprite Index to HP (minus 1, because index starts at 0)
image_index = HP-1;
// Dont Animate i.e. Cycle through Sprites
image_speed = 0;