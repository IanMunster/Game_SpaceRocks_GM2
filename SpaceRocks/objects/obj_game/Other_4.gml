/// @description Starts in-game Logic
//  Music and Asteroids Spawner Start (Triggers at the Start of the Room)

// if currently in Game Room
if (room == rm_Game) {
	
	/* TEMP Disabled
	// Restart Music every Restart
	if (audio_is_playing(msc_Song)) {
		// Stop the Music
		audio_stop_sound(msc_Song);
	}
	// Start Game Music, Priority 2, Looping
	audio_play_sound(msc_Song, 2, 1);
	*/
	
	// Start Spawning Asteroids
	scr_Spawn_off_Camera(obj_Asteroid, 40);
	
	// Start Spawning Different Enemies
	scr_Spawn_off_Camera(obj_Brute, 3);
	scr_Spawn_off_Camera(obj_Hunter, 5);
	scr_Spawn_off_Camera(obj_Raider, 8);
	
	//Set an Alarm to Repeat the Asteroid Spawner
	alarm[0] = 1*room_speed;
}