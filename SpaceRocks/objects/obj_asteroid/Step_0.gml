/// @description Asteroids RoomBoundaries and Sprite continued spin (Step updates each frame)
// 

// Sprite continued spin
image_angle += 1;

// Room Boundary; wrap around the room i.e. the "Pacman-Effect"
	// Wrap ( X plane, Y plane, Margin)
move_wrap(1,1, sprite_width / 2);
