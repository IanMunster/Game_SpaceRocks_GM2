/// @description Camera Follow Target
// You can write your code in this editor

// Check if Target Obj exists
if(instance_exists(target)){
	// Camera X and Y based on Target, with Target in Center
	cameraX = target.x - (cameraWidth/2);
	cameraY = target.y - (cameraHeight/2);
	
	// Clamp Camera to Room Wrapping Edge with Camera anchor inside Room
	cameraX = clamp(cameraX, 0, room_width-cameraWidth);
	cameraY = clamp(cameraY, 0, room_height-cameraHeight);
}

// Set position of the Default Camera
camera_set_view_pos(view_camera[0], cameraX, cameraY);