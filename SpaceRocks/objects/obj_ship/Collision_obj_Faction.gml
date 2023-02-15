/// @description Collision
//

// Dont do Damage if Friendly Fire (Others Faction is Our Faction)
if(other.faction == faction) exit;
else if(invicible) {
	// Otherwise if Player has Invincibility Shield
	with(other) {
		// Other Takes Damage (UserEvent1)
		event_perform(ev_other, ev_user1);
	}
	// Player Doesnt take damage
	exit;
}

// Damage Object
// Perform Take Damage Event (UserEvent1)
event_perform(ev_other, ev_user1);
