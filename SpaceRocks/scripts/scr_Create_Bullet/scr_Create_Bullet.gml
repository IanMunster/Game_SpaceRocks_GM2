/// @description Create Bullet
/// @arg Direction
/// @arg Speed
/// @arg Faction
/// @arg Creator

/* (OBSOLETE) Arguments for the Script Function
var _dir = argument[0];
var _spd = argument[1];
var _fac = argument[2];
var _creator = id;*/

// Creates a Bullet
function scr_Create_Bullet(_dir, _spd, _fac, _creator){
	// Set the ID of the Creator
	// _creator = id;
	// Play Laser Zap sound, Priority 1, Not Looping
	audio_play_sound(snd_Zap, 1, 0);
	// Create a new Bullet instance layer (X, Y, Inst.LayerName, Objects)
	var inst = instance_create_layer(x, y, "Instances", obj_Bullet);
	// Set multiple instance variables
	with(inst){
		// Set the Direction of movement for the Bullet
		direction = _dir;
		// Rotation of Bullet
	//	image_angle = _dir;
		// Set the Speed of movement for the Bullet
		speed = _spd;
		// Set the Faction of the Bullet
		faction = _fac;
		// Set the Creator of the Bullet
		creator = _creator;
		
		// Set Color of Bullet based on Creator Faction
		if (faction == factions.ally) image_blend = c_green;
		else if (faction == factions.enemy) image_blend = c_red;
	}
}