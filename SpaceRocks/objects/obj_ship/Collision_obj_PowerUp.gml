/// @description PowerUp pick-up
// Collect PowerUps
// Get PowerUp based on Type

// Check which PowerUp is Collected
with(other){
	// based on PowerUp image
	var powerUp_Type = image_index;
	
	// Destroy PowerUp when Collected
	instance_destroy();
}

// Get PowerUp depending on PowerUp_Type
switch(powerUp_Type) {
	// Invincibility Shield
	case powerUps.invincible_Shield:
		// Give Player Invincibility Shield
		invicible = true;
		// Set PowerUp Duration timer
		alarm[1] = 8*room_speed;
		break;
	
	// Default change Players Guns
	default:
		// Set Gun Type
		guns = powerUp_Type;
		// Set PowerUp Duration timer
		alarm[0] = 5*room_speed;
		break;
}