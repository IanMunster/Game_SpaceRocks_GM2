/// @description Detects Player Input (Step updates each frame)
/// Ship Movement, Rotation and RoomBoundaries 
/// Shooting and Shooting Sound
//

// Maximal Speed (Should not be Higher than Bullet Speed)
var maxSpeed = 5;

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
		scr_Create_Bullet(image_angle, bulletSpeed, faction, id);
	}