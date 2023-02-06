/// @description Take Damage Event
///

// Subtract HP on Damage Taken
HP -= 1;

// Check if HP is 0
if (HP <= 0) {
	// Destory the Enemy Ship
	instance_destroy();
}