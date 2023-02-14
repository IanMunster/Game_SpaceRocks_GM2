/// @description Game Director 
/// (Create Triggers once when Object is created)
/// Creates Score and Lives, Creates GUI Font, Creates Randomize values
/// Creates Factions

// Set Build-in Global var for
score = 0;
lives = 3;

// Set GUI Font ftype
draw_set_font(fnt_Text);

// Set true Random in TEST Builds
randomize();

// Create Global Faction Enumerator
enum factions {
	neutral,
	ally,
	enemy
}

// Create Global PowerUp Enumerator
enum powerUps {
	two_Bullets,
	three_Bullets,
	four_Bullets,
	star_Bullets,
	laser_Bullets,
	invicible_Shield
}