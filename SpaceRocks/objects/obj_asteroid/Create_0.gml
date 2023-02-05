/// @description randomized Asteroids
/// with start Rotation and applies Movement (Triggered once when Obj is created)
// 

// Inherit Parent Create Event
event_inherited();

// Variable Asteroid Sprite
	// Sprite ID = random (sprites selection)
sprite_index = choose(spr_Asteroid_S, spr_Asteroid_M, spr_Asteroid_L);

// Randomized Sprite Angle (range between 0 and 359 degrees)
image_angle = irandom_range(0, 359);

// Randomized Asteroid Direction (range between 0 and 359 degrees)
direction = irandom_range(0, 359);

// Asteroid Movement Speed
speed = 1;
