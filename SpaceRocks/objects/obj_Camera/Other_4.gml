/// @description Camera Setup

// Camera Variables
cameraX = 0;
cameraY = 0;
cameraWidth = 800;
cameraHeight = 600;

// Enabled camera viewport, default Camera
view_enabled = true;
view_visible[0] = true;

// Change size of Camera (Default Camera, Camera Width, Camera Height
camera_set_view_size(view_camera[0], cameraWidth, cameraHeight);

// Viewport Variables
// Scaling display factor
displayScale = 1.5;
displayWidth = cameraWidth * displayScale;
displayHeight = cameraHeight * displayScale;

// Setup Window Viewport (based on Camera Width and Height times Scale Factor
window_set_size(displayWidth, displayHeight);
// Setup Game Canvas Surface based on Display Width and Height
surface_resize(application_surface, displayWidth, displayHeight);

// Set GUI to Camera Width and Height
display_set_gui_size(cameraWidth, cameraHeight);

// Set alarm to Center Game Window after first frame.
alarm[0] = 1;

// Target for camera to follow
target = obj_Ship;