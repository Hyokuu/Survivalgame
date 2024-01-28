/// @description Insert description here
// You can write your code in this editor


switch (game_state) {
    case GameState.Planning:
	
        // Handle input for planning phase
        if (mouse_check_button_pressed(mb_left)) {
            // Check if the mouse is over the "Defend" button
           if (instance_position(mouse_x, mouse_y, oDefendButton)){

                game_state = GameState.Defending;
                show_debug_message("Transitioning to Defending state.");
                // Add logic to transition to the defending state
	            // Add logic to transition to the defending state
	            // Switch to Room2 when entering the Defending state
	            room_goto(Room2);
            } else {
                // Handle other interactions during the planning phase
            }
        }
        break;

     case GameState.Defending:
        // Handle defending phase logic  zz and Horde_attack == 0
		if (day_count == 1 and Horde_attack < 10){
			// Total power for the day
			if (alarm[0] == -1){
			max_power = 5;
			spawn_random_enemies(max_power);
			alarm[0] = room_speed*4;}}
			//if (alarm[0] == -1){
			
		


		
        // This is where your main gameplay logic for the defending phase would go
        // You can handle enemy spawning, player actions, etc.
        // Once the defending phase is complete, you can transition back to the planning phase or to another state
		 break;

    // Add more cases for additional game states

	 default:
		 break;


    // Add more cases for additional game states
}
