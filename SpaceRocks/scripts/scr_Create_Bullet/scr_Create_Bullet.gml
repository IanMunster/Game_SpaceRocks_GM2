/// @description Create Bullet
/// @arg Direction
/// @arg Speed
/// @arg Faction
/// @arg Creator
/// @arg Gun_Type

// Creates a Bullet
function scr_Create_Bullet(_bullet_Dir, _bullet_Spd, _bullet_Fact, _bullet_Creat, _gun_Type) {
	// If no Gun_Type defined, set Default Gun_Type	
	if(_gun_Type == undefined) { _gun_Type = -1; }
	
	// Choose GunType
	switch(_gun_Type) {
		// Three Bullets PowerUp
		case powerUps.three_Bullets:
		// Create Middle Bullet
			// Create a new Bullet instance layer (X, Y, Inst.LayerName, Objects)
			var inst = instance_create_layer(x, y, "Instances", obj_Bullet);
			// Initialize Bullet
			scr_Init_Bullet(_bullet_Dir, _bullet_Spd, _bullet_Fact, _bullet_Creat, inst);
			// Do not Break, to run TwoBullets; i.e. Left and Right Bullet
			
		// Two Bullets PowerUp
		case powerUps.two_Bullets:
			// Play Laser Zap sound, Priority 1, Not Looping
			audio_play_sound(snd_Zap, 1, 0);
			// Seperation between Gun Muzzles
			var _gun_Sep = 12;
		// Create Right-Bullet
			// Create a new Bullet instance layer (X with seperation offset, Y with seperation offset, Inst.LayerName, Objects)
			var inst = instance_create_layer(
				x+lengthdir_x(_gun_Sep, _bullet_Dir-90),
				y+lengthdir_y(_gun_Sep, _bullet_Dir-90),
				"Instances", obj_Bullet);
			// Initialize Bullet
			scr_Init_Bullet(_bullet_Dir, _bullet_Spd, _bullet_Fact, _bullet_Creat, inst);
		// Create Left-Bullet
			// Create a new Bullet instance layer (X with seperation offset, Y with seperation offset, Inst.LayerName, Objects)
			var inst = instance_create_layer(
				x+lengthdir_x(_gun_Sep, _bullet_Dir+90),
				y+lengthdir_y(_gun_Sep, _bullet_Dir+90),
				"Instances", obj_Bullet);
			// Initialize Bullet
			scr_Init_Bullet(_bullet_Dir, _bullet_Spd, _bullet_Fact, _bullet_Creat, inst);
			break;
			
		// Four Bullets PowerUp	
		case powerUps.four_Bullets:
			// Play Laser Zap sound, Priority 1, Not Looping
			audio_play_sound(snd_Zap, 1, 0);
			// Seperation between Gun Muzzles
			var _gun_Sep = 7, _bullet_Angle;
			// repeat 4x for 4bullets
			for (var i=0; i<4; i++) {
				_bullet_Angle = _bullet_Dir + (i * 90);
				// Create a new Bullet instance layer (X with seperation offset, Y with seperation offset, _inst.LayerName, Objects)
				var inst = instance_create_layer(
					x+lengthdir_x(_gun_Sep, _bullet_Angle),
					y+lengthdir_y(_gun_Sep, _bullet_Angle),
					"Instances", obj_Bullet);
				// Initialize Bullet
				scr_Init_Bullet(_bullet_Angle, _bullet_Spd, _bullet_Fact, _bullet_Creat, inst);
			}
		break;
		
		// Star Bullets PowerUp
		case powerUps.star_Bullets:
			// Play Laser Zap sound, Priority 1, Not Looping
			audio_play_sound(snd_Zap, 1, 0);
			// Seperation between Gun Muzzles
			var _gun_Sep = 7, _bullet_Angle;
			// repeat 4x for 4bullets
			for (var i=0; i<8; i++) {
				_bullet_Angle = _bullet_Dir + (i * 45);
				// Create a new Bullet instance layer (X with seperation offset, Y with seperation offset, _inst.LayerName, Objects)
				var inst = instance_create_layer(
					x+lengthdir_x(_gun_Sep, _bullet_Angle),
					y+lengthdir_y(_gun_Sep, _bullet_Angle),
					"Instances", obj_Bullet);
				// Initialize Bullet
				scr_Init_Bullet(_bullet_Angle, _bullet_Spd, _bullet_Fact, _bullet_Creat, inst);
			}
		break;
		
		// Laser Bullets PowerUp
		case powerUps.laser_Bullets:
			// Play Laser sound, Priority 1, Not Looping
			audio_play_sound(snd_Laser, 1, 0);
			// Create a new Bullet instance layer (X, Y, Inst.LayerName, Objects)
			var inst = instance_create_layer(x, y, "Instances", obj_Laser);
			// Initialize Bullet
			scr_Init_Bullet(_bullet_Dir, _bullet_Spd, _bullet_Fact, _bullet_Creat, inst);
		break;
		// Default single Bullet
		default:
			// Play Laser Zap sound, Priority 1, Not Looping
			audio_play_sound(snd_Zap, 1, 0);
			// Create a new Bullet instance layer (X, Y, Inst.LayerName, Objects)
			var inst = instance_create_layer(x, y, "Instances", obj_Bullet);
			// Initialize Bullet
			scr_Init_Bullet(_bullet_Dir, _bullet_Spd, _bullet_Fact, _bullet_Creat, inst);
		break;
	}
}