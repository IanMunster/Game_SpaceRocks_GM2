/// @description Player Death
/// Retracts one Life
/// Plays Death Sound
/// Creates Debris Particles
//

// Play Death Sound, Priority 1, Not Looping
audio_play_sound(snd_Death,1,0);

// Retract Life
lives -= 1;


// Create multiple debris "particles"
repeat (10){
	// Create debris at impact location
	instance_create_layer(x,y,"Instances",obj_Debris);
}

// Restart the GameRoom
with (obj_Game) {
	// Set the Alarm to Restart the Game room
	alarm[1] = room_speed*1;
}