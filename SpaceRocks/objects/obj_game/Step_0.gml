/// @description Switches to Correct Game Screen on Enter Press (Step updates each frame)
/// Keep track of Score and lives to Play Audio and Switch Rooms
//

// Check if for "Enter"-key Input
if (keyboard_check_pressed(vk_enter)) {
	// Switch to correct Room
	switch(room){
		// If Enter was pressed on the Start Screen
			case rm_Start:
				// Start the game, by going to the Game Room
				room_goto(rm_Game);
				// Exit Switch
				break;
		// If Enter was pressed on either the Lose or Win Screen
			case rm_Win:
			case rm_Lose:
				// Restarts the Game
				game_restart();
				// Exit Switch
				break;
	}
}

// Keep track of Score and Lives in GameRoom
if (room == rm_Game) {
	// If player reaches winning Score 
	if (score >= 1000) {
		// Play Win Audio, Priority 1, Not Looping
		audio_play_sound(snd_Win, 1, 0);
		// Go to the "Win" screen
		room_goto(rm_Win);
	}

	// If player reaches zero Lives 
	if (lives <= 0) {
		// Play the Lose Audio, Priority 1, Not Looping
		audio_play_sound(snd_Lose, 1, 0);
		// Go to the "Lose" screen
		room_goto(rm_Lose);
	}
}
