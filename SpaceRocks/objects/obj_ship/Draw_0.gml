/// @description Player Ship and Power Ups Draw
// You can write your code in this editor

// Draw Player Ship
draw_self();

// If player has Guns (Not default i.e. -1)
if(guns != -1) {
	// Draw Gun based on PowerUp index
	draw_sprite_ext(spr_gb_ship_powerups_strip6, guns, 
		x,y, image_xscale, image_yscale, image_angle,
		image_blend, image_alpha);
}

// If player has Shield
if(invicible) {
	// Alpha Value based on Reset Timer
	var alpha = min(1, alarm[1]/60);
	// Draw Shield based on PowerUp Enumerator
	draw_sprite_ext(spr_gb_ship_powerups_strip6, powerUps.invincible_Shield, 
		x,y, image_xscale, image_yscale, image_angle,
		image_blend, alpha);
}