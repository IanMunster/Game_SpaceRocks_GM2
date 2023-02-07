/// @ Attack Player 
/// Search for Player
/// Rotate towards Player
/// Move towards Player
/// Rush at Player

// Inherit the parent event
event_inherited();

// Maximal Speed (Should not be Higher than Bullet Speed)
var maxSpeed = 5.5;

// Search Player Check if Player Exists
if (!instance_exists(obj_Ship)) exit; 

// If player is in Range
if	(point_distance(x,y, obj_Ship.x, obj_Ship.y) < 250 ){
// Look at Player
	// Turn to look at player Ship
	var new_angle = point_direction(x,y, obj_Ship.x, obj_Ship.y);
	// Find closet angle from current angle (Current angle minus diffrence between current and new angle
	new_angle = image_angle - angle_difference(image_angle, new_angle);
	// Gradually turn to Player (from current angle, to new angle, with Rotation Speed)
	image_angle = lerp(image_angle, new_angle, 0.075);
	
// Chase Player
	// Move towards Player
	direction = image_angle;

	// Increase Speed
	speed += 0.01;
	// Set Max Speed
	if (speed >= maxSpeed) {
		speed = maxSpeed;
	} else if (speed <= -maxSpeed) {
		speed = -maxSpeed;
	}
	
} else {
	// Otherwise move back to Current Direction
	image_angle = lerp(image_angle, direction, 0.075);
	// Return to normal Speed
	speed = lerp(speed, origSpeed, 0.1);
}