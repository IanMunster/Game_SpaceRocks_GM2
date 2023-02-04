/// @description Starts in-game Logic
//  Music and Asteroids Spawner Start (Triggers at the Start of the Room)

// if currently in Game Room
if (room == rm_Game) {
	
	// Start Spawning Asteroids
	scr_Spawn_off_Camera(obj_Asteroid, 40);
	
	/* TEMP Disabled
	// Restart Music every Restart
	if (audio_is_playing(msc_Song)) {
		// Stop the Music
		audio_stop_sound(msc_Song);
	}
	// Start Game Music, Priority 2, Looping
	audio_play_sound(msc_Song, 2, 1);
	*/
	
	/* Version 1.0 Asteroid Spawning.
	// Now handled by scr_Spawn_off_Camera
	// Create 6 Asteroids around Player
	repeat (6) {
		// Create a boundary around player for Asteroids to Spawn
			// Randomly chooses between two random ranges 1= Left Boundary, 2= Right Boundary
		var xx = choose(
			irandom_range(0, room_width*0.3),
			irandom_range(room_width*0.7,room_width)
			);
			// Randomly chooses between two random ranges 1= Upper Boundary, 2= Lower Boundary
		var yy = choose(
			irandom_range(0, room_height*0.3),
			irandom_range(room_height*0.7,room_height)
			);
		// Create the Asteroids on Game Start
		instance_create_layer(xx, yy, "Instances", obj_Asteroid);
	}
	*/
	
	//Set an Alarm to Repeat the Asteroid Spawner
	alarm[0] = room_speed*1;
}