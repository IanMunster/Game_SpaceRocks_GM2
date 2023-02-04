/// @description Camera Setup

// Global Camera Variables
global.CameraX = 0;
global.CameraY = 0;
global.CameraWidth = 800;
global.CameraHeight = 600;

// Target for camera to follow
target = obj_Ship;

// Enabled camera viewport, default Camera
view_enabled = true;
view_visible[0] = true;

// Change size of Camera (Default Camera, Camera Width, Camera Height
camera_set_view_size(view_camera[0], global.CameraWidth, global.CameraHeight);

// Run the Step Event Code at Start, to Fix Spawning Asteroids on Game Start
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

// Display
// Scaling display factor
displayScale = 1.5;
displayWidth = global.CameraWidth * displayScale;
displayHeight = global.CameraHeight * displayScale;

// Setup Window Viewport (based on Camera Width and Height times Scale Factor
window_set_size(displayWidth, displayHeight);
// Setup Game Canvas Surface based on Display Width and Height
surface_resize(application_surface, displayWidth, displayHeight);

// Set GUI to Camera Width and Height
display_set_gui_size(global.CameraWidth, global.CameraHeight);

// Set alarm to Center Game Window after first frame.
alarm[0] = 1;
