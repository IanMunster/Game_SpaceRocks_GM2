// Initialize Bullet
/// @arg Direction
/// @arg Speed
/// @arg Faction
/// @arg Creator
/// @arg Instance

function scr_Init_Bullet(_bullet_Direction, _bullet_Speed, _bullet_Faction, _bullet_Creator, _bullet_Instance){
	// Set multiple instance variables
	with(_bullet_Instance){
		// Set the Direction of movement for the Bullet
		direction = _bullet_Direction;
		// Rotation of Bullet
		image_angle = _bullet_Direction;
		// If the Bullet is NOT a Lazer 
		if (object_index == obj_Bullet) {
			// Set the Speed of movement for the Bullet
			speed = _bullet_Speed;
		}
		// Set the Faction of the Bullet
		faction = _bullet_Faction;
		// Set the Creator of the Bullet
		creator = _bullet_Creator;
		
		// Set Color of Bullet based on Creator Faction
		if (faction == factions.ally) {
			image_blend = c_green;
		} else if (faction == factions.enemy) {
			image_blend = c_red;
		}
	}
}