/// @description Camera Follow Target
// You can write your code in this editor

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