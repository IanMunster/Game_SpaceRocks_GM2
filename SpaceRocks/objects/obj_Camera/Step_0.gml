/// @description Camera Update
// Camera Follows Target and Clamps inside GameRoom
// Background Parallax

// Check if Target Obj exists
if(instance_exists(target)){
	// Camera X and Y based on Target, with Target in Center
	global.CameraX = target.x - (global.CameraWidth/2);
	global.CameraY = target.y - (global.CameraHeight/2);
	
	// Clamp Camera to Room Wrapping Edge with Camera anchor inside Room
	global.CameraX = clamp(global.CameraX, 0, room_width-global.CameraWidth);
	global.CameraY = clamp(global.CameraY, 0, room_height-global.CameraHeight);
}

// Set position of the Default Camera
camera_set_view_pos(view_camera[0], global.CameraX, global.CameraY);

// Background Parallax
/// Move Background Layer X and Y (Times Parallax Speed, 1=Exact with Camera, lower number is lower speed)
layer_x("Parallax_0", global.CameraX*.98);
layer_y("Parallax_0", global.CameraY*.98);
// Starfield 2
layer_x("Parallax_1", global.CameraX*.93);
layer_y("Parallax_1", global.CameraY*.93);
// Starfield 3
layer_x("Parallax_2", global.CameraX*.89);
layer_y("Parallax_2", global.CameraY*.89);
// Gradient
layer_x("Parallax_3", global.CameraX*.85);
layer_y("Parallax_3", global.CameraY*.85);