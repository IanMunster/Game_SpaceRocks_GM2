/// @description Detects Player Input (Step updates each frame)
/// Ship Movement, Rotation and RoomBoundaries 
/// Shooting and Shooting Sound
//

var maxSpeed = 10;

// Rotation
	// Rotate Left on "Left Arrow"-key Input
	if (keyboard_check(vk_left)) {
		// Image Rotation
		image_angle += 5;
	}

	// Rotate Right on "Right Arrow"-key Input
	if (keyboard_check(vk_right)) {
		// Image Rotation
		image_angle -= 5;
	}

// Movement
	// Forward Acceleration on "Up Arrow"-key Input
	if (keyboard_check(vk_up)) {
		// Motion Add is a Vector2( direction, speed)
		motion_add(image_angle, 0.05);
	}
	
	// Deceleration on "Down Arrow"-key Input
	if (keyboard_check(vk_down)) {
		// Dont Reverse
		if (speed > 0) {
			speed -= 0.05;
		}
	}
	
	// Set Max Speed
	if (speed >= maxSpeed) {
		speed = maxSpeed;
	} else if (speed <= -maxSpeed) {
		speed = -maxSpeed;
	}
	
	// Room Boundary; wrap around the room i.e. the "Pacman-Effect"
		// Wrap ( X plane, Y plane, Margin)
	move_wrap(1,1, sprite_width / 2);

// Shooting
	// Create bullet instance per "Spacebar"-key Input
	if (keyboard_check_pressed(vk_space)) {
		// Play Laser Zap sound, Priority 1, Not Looping
		audio_play_sound(snd_Zap, 1, 0);
		// Create a new Bullet instance layer (X, Y, Inst.LayerName, Objects)
		var inst = instance_create_layer(x, y, "Instances", obj_Bullet);
		// Set the direction of movement for the instance
		inst.direction = image_angle;
	}