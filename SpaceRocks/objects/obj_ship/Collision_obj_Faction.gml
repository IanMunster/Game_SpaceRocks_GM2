/// @description Collision
//

// Dont do Damage if Friendly Fire (Others Faction is Our Faction)
if(other.faction == faction) exit;

// Damage Object
// Preform Take Damage Event (UserEvent1)
event_perform(ev_other, ev_user1);
