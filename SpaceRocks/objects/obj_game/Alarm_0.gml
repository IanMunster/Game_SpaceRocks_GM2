/// @description Continued Asteroids Spawner (Triggers After amount of Time)
// 

// Stop the Asteroid Spawner if NOT in Game Room
if (room != rm_Game) {
	// Exit the Spawner
	exit;
}

// Choose a location on the borders of the Screen to Spawn a Asteroid
if (choose(0,1)) {
	// Left or Right
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
} else {
	// Top or Bottom
	var xx = irandom_range(0, room_width);
	var yy = choose(0, room_height);
}

// Spawn an Asteroid
instance_create_layer(xx, yy, "Instances", obj_Asteroid);

// Reset the Asteroid Spawner Alarm 
alarm[0] = room_speed*4;