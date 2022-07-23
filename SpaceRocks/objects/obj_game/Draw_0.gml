/// @description Draws the GUI Elements (Draws elements)
// 

// Create GUI based on Game Room (or Game state)
switch(room){
	case rm_Game:
		// Draw the Score GUI on (X, Y, convert to string( current Score ))
		draw_text(20, 20, "SCORE: "+string(score)+"/1.000");
		// Draw the Lives GUI on (X, Y, convert to string( current Lives ))
		draw_text(20, 40, "LIVES: "+string(lives)+"/3");
		// Exit switch
		break;
	case rm_Start:
	// Draw Title Text
		// Center-Justified Text
		draw_set_halign(fa_center);
		// Select a color for the Title
		var c = c_aqua;
		// draw the text in the center top,
			// Scale 3 and slat of 3, and with set color
		draw_text_transformed_color(
			room_width/2, 100, "Space Rocks - GameMaker",
			3, 3, 3, c,c,c,c, 1
		);
		// Draw the Objective and Keybind text
			// "@" allows for multiple lines of text
		draw_text(
			room_width/2, 200,
			@"Score 1,000 Points to Win!
			
			ARROW UP: Accelerate
			ARROW DOWN: Decelerate
			ARROW LEFT: Rotate Left
			ARROW RIGHT: Rotate Right
			SPACEBAR: Shoot Laser
			
			>> PRESS ENTER TO START <<"
		);
		// Reset to Left-Justified Text
		draw_set_halign(fa_left);
		// Exit switch
		break;
	case rm_Win:
	// Draw Win Text
		// Center-Justified Text
		draw_set_halign(fa_center);
		// Select a color for the Win Text
		var c = c_lime;
		// draw the text in the center top,
			// Scale 3 and slat of 3, and with set color
		draw_text_transformed_color(
			room_width/2, 150, 
			@"CONGRATULATIONS!
			YOU WON!",
			3, 3, -3, c,c,c,c, 1
		);
		// Draw the Objective and Keybind text
			// "@" allows for multiple lines of text
		draw_text(
			room_width/2, 300,
			@"You Scored: "+string(score)+@"
			out of a 1,000 Points to Win!

			
			>> PRESS ENTER TO RESTART <<"
		);
		// Reset to Left-Justified Text
		draw_set_halign(fa_left);
		// Exit switch
		break;
	case rm_Lose:
		// Draw Lose Text
		// Center-Justified Text
		draw_set_halign(fa_center);
		// Select a color for the Lose Text
		var c = c_red;
		// draw the text in the center top,
			// Scale 3 and slant of 0, and with set color
		draw_text_transformed_color(
			room_width/2, 200, "GAME OVER!",
			3, 3, 0, c,c,c,c, 1
		);
		// Draw the Objective and Keybind text
			// "@" allows for multiple lines of text
		draw_text(
			room_width/2, 300,
			@"You Scored: "+string(score)+@"
			You needed 1,000 Points to Win!

			
			>> PRESS ENTER TO RESTART <<"
		);
		// Reset to Left-Justified Text
		draw_set_halign(fa_left);
		// Exit switch
		break;
}

