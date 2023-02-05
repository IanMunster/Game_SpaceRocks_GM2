/// @description Collision
/* CURRENTLY BUGGED: 
For version 2.3.*:
@13:34
	need to use: if(other.id == creator) exit;
	instead of: if(other == creator) exit;
-OR-
@22:29
	use: var _creator = self;
	instead of: var _creator = id;
*/

// Exit when colliding with own Creator
if (other.id == creator) exit;

// Destroy Self on Collision
instance_destroy();

// Dont do Damage if Friendly Fire (Others Faction is Our Faction)
if (other.faction == faction) exit;

// Damage Object
// Collides with Other Object
with (other) {
	// Preform Take Damage Event (UserEvent1)
	event_perform(ev_other, ev_user1);
}