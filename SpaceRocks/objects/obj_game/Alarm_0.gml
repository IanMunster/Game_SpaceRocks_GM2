/// @description Asteroids Spawner 
// Continually spawns Asteroids (Triggers After amount of Time)

// Stop the Asteroid Spawner if NOT in Game Room
if (room != rm_Game) {
	// Exit the Spawner
	exit;
}

// Spawn an Asteroid
scr_Spawn_off_Camera(obj_Asteroid, 1);

// Reset the Asteroid Spawner Alarm 
alarm[0] = room_speed*1;