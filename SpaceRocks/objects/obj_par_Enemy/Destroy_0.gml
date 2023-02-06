/// @description Destroy Enemy Ship
/// Plays Death Sound and Creates Particles on Collision 

// Play Death Sound, Priority 1, Not Looping
audio_play_sound(snd_Death,1,0);

// Create multiple debris "particles"
repeat (10){
	// Create debris at impact location
	instance_create_layer(x,y,"Instances",obj_Debris);
}

// Score Points for Destroying Enemy
/// Points based on Enemy Type
switch (object_index){
	case obj_Raider: score += 15; break;
	case obj_Hunter: score += 30; break;
	case obj_Brute: score += 45; break;
}