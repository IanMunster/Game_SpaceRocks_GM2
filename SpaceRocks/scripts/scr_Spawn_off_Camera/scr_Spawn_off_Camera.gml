/// @description Spawn Object off Camera
/// @arg obj
/// @arg number
// Spawns Asteroids and Enemies

// (OBSOLETE) Arguments for the Script Function
// var obj = argument0;
// var num = argument1;

function scr_Spawn_off_Camera(obj, num){
	// Position of the Spawned Objects
	var xx,yy;

	// Padding for Spawn Position Outside Camera
	var pad = 64;

	// Repeat Spawning for NUM of times
	repeat(num){
		// Set random X and Y positions based on Room Size
		xx = random_range(0, room_width);
		yy = random_range(0, room_height);

		// While random X and Y position, with padding, are Inside the Camera View
		while(point_in_rectangle(xx, yy, global.CameraX-pad, global.CameraY-pad, global.CameraX+global.CameraWidth+pad, global.CameraY+global.CameraHeight+pad)){
			// Choose a New Random Position
			xx = random_range(0, room_width);
			yy = random_range(0, room_height);
		}

		// Create Object at Instance Layer on X and Y Position
		instance_create_layer(xx, yy, "Instances", obj);
	}
}