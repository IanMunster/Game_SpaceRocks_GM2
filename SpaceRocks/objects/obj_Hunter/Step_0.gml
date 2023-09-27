/// @ Attack Player 
/// Search for Player
/// Rotate towards Player
/// Move towards Player
/// Fire at Player

// Inherit the parent event
event_inherited();

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
	// Keep distance from Player
	if	(point_distance(x,y, obj_Ship.x, obj_Ship.y) < 150 ){
		// Decrease Speed
		speed -= 0.05;
	} else {
		// Increase Speed when Further from player
		speed += 0.025;
	}
	
// Shoot at Player
	// Increment Bullet Countdown every Frame
	bulletCountdown++;
	// Check Bullet Countdown if 60frames i.e. 1second
	if (bulletCountdown >= 40) {
		// Fire Bullet
		scr_Create_Bullet(image_angle, 8, faction, id, 0 /*guns*/);
		// Reset Bullet Countdown
		bulletCountdown = 0;
	}
	
} else {
	// Otherwise move back to Current Direction
	image_angle = lerp(image_angle, direction, 0.075);
	// Return to normal Speed
	speed = lerp(speed, origSpeed, 0.1);
}