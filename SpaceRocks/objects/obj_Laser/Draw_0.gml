/// @description Draws line for Laser Bullets
// You can write your code in this editor

// Length and Width of the Laser
var len = 500, wid = 2;

// Draw a line from Creators X and Y to X and Y in Direction * Length
draw_line_width_color(x,y, 
	x+lengthdir_x(len, direction),
	y+lengthdir_y(len, direction),
	wid,
	image_blend,image_blend);

// Draw Collision
var inst = collision_line(x,y, 
	x+lengthdir_x(len, direction),
	y+lengthdir_y(len, direction),
	obj_Faction, false, false);

// Check for Collision
if (inst != noone) {
	// If Collision with Non-Friendly faction
	if (inst.faction != faction) {
		// Take Damage Event
		with (inst) {
			// If not Immune to Laser
			if (!immuneToLaser) {
				event_perform(ev_other, ev_user1)
			}
		}
	}
}