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
	// Invincibilty Shield
	case powerUps.invicible_Shield:
		// Make Player invincible
		break;
	
	// Default change Players Guns
	default:
		// Gun Types
		break;
}