/// @description Insert description here
// You can write your code in this editor

if (menu_open) {
    var menu_x = room_width / 2;
    var menu_y = room_height / 2;
    var option_height = 40; // Adjust as needed
    var option_x_offset = 100; // Adjust the horizontal offset as needed

    var menu_options = [
        "exit",
        "Train Villager",
        "1",
		"Train Soldier",
        "2"
        // Add other menu options as needed
    ];

    var option_sprites = [
        sExit,
        sTransfer,
        sReturn,
        sTransfer,
        sReturn,
      
        // Add other sprites as needed
    ];

    // Loop through menu options
    for (var i = 0; i < array_length_1d(menu_options); i++) {
        var option_text = menu_options[i];
        var option_sprite = option_sprites[i];
        var option_y = y + (i * option_height);
        var option_x = x - option_x_offset; // Initialize x-coordinate for the sprite

        // Adjust the position for the "exit" option
        if (option_text == "exit") {
            option_y = menu_y - 100;
            option_x = x + 150; // Adjust the x-coordinate for the "exit" option
        }

        // Draw the sprite
        draw_sprite(option_sprite, 0, option_x, option_y - 10);

        // Draw text next to the sprite for non-exit options
        if (option_text != "exit" and option_text != "1" and option_text != "2" and option_text != "3") {
            draw_text(option_x + 70, option_y, option_text); // Adjust the x-coordinate for text
        }

		// ADD COUNTS FOR DIFFERENT UNITS
			if (option_text == "Train Villager"){
					draw_text(x - 180, option_y, "Count: " + string(oManager.barrack_villager_count));
					draw_text(x + 100, option_y, "Count: " + string(oManager.villager_count));
			}
			if (option_text == "Train Soldier"){
					draw_text(x - 180, option_y, "Count: " + string(oManager.barrack_soldier_count));
					draw_text(x + 100, option_y, "Count: " + string(oManager.soldier_count));
			}
						
        // Check if the mouse is over the option
        if (point_in_rectangle(mouse_x, mouse_y, option_x - 50, option_y - 10, option_x + 50, option_y + 10)) {
            // Highlight the option when the mouse is over it

            // Check for left mouse button click
            if (mouse_check_button_pressed(mb_left)) {
                // Add logic for the selected option
                // For example, you might want to handle different actions based on the selected option
                if (option_text == "Train Villager") {
                    if (oManager.villager_count >= 1) {
                        oManager.villager_count -= 1;
                        oManager.barrack_villager_count += 1;
                        show_debug_message(oManager.barrack_villager_count);
                    }
                } else if (option_text == "1") {
                    if (oManager.barrack_villager_count >= 1) {
                        oManager.villager_count += 1;
                        oManager.barrack_villager_count -= 1;
                        show_debug_message(oManager.barrack_villager_count);
                    }
				} else if (option_text == "Train Soldier") {
                    if (oManager.soldier_count >= 1) {
                        oManager.soldier_count -= 1;
                        oManager.barrack_soldier_count += 1;
                        show_debug_message(oManager.barrack_soldier_count);
                    }					
                } else if (option_text == "2") {
                    if (oManager.barrack_soldier_count >= 1) {
                        oManager.soldier_count += 1;
                        oManager.barrack_soldier_count -= 1;
                        show_debug_message(oManager.barrack_soldier_count);
                    }	
				} else if (option_text == "Train Knight") {
                    if (oManager.knight_count >= 1) {
                        oManager.knight_count -= 1;
                        oManager.barrack_knight_count += 1;
                        show_debug_message(oManager.barrack_knight_count);
                    }					
                } else if (option_text == "3") {
                    if (oManager.barrack_knight_count >= 1) {
                        oManager.knight_count += 1;
                        oManager.barrack_knight_count -= 1;
                        show_debug_message(oManager.barrack_knight_count);
                    }					
                } else if (option_text == "exit") {
                    menu_open = false;
                    show_debug_message("Trying to exit");
                }
            }
        }
    }
}