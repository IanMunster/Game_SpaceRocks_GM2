/// @description Take Damage Event
/// Plays Death Sound and Creates Particles on Collision 
/// Adds ScorePoints Self on Collision Trigger
/// Destroy/Splits Asteroid & Destroys 

// Play Death Sound, Priority 1, Not Looping
audio_play_sound(snd_Death,1,0);

// Add Score Points
score += 10;

// Destroy Self
instance_destroy();

// Create two smaller Asteroids
// Check the Current Sprite of the Asteroid (i.e. Size)
if (sprite_index == spr_Asteroid_L) {
	// repeat is a simplified for loop (loop times)
	repeat (2) {
		// create a smaller sized asteroids
		var new_asteroid = instance_create_layer(x,y,"Instances",obj_Asteroid);
		// Overwrite the randomized size when Asteroid Obj was Created
		new_asteroid.sprite_index = spr_Asteroid_M;
	} // Check if Medium Sized
} else if (sprite_index == spr_Asteroid_M) {
	// repeat is a simplified for loop (loop times)
	repeat (2) {
		// create a smaller sized asteroids
		var new_asteroid = instance_create_layer(x,y,"Instances",obj_Asteroid);
		// Overwrite the randomized size when Asteroid Obj was Created
		new_asteroid.sprite_index = spr_Asteroid_S;
	}
}
	
// Create multiple debris "particles"
repeat (10){
	// Create debris at impact location
	instance_create_layer(x,y,"Instances",obj_Debris);
}