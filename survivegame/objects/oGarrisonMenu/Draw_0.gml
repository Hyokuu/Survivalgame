/// @description Insert description here
// You can write your code in this editor

if (menu_open) {
    var menu_x = room_width / 2;
    var menu_y = room_height / 2;
    var option_height = 40; // Adjust as needed
    var option_x_offset = 100; // Adjust the horizontal offset as needed

    var menu_options = [
        "exit",
        "Garrison Villager",
        "1",
		"Garrison Soldier",
		"2",
		"Garrison Knight",
		"3"
        // Add other menu options as needed
    ];

    var option_sprites = [
        sExit,
        sTransfer,
        sReturn,
        sTransfer,
        sReturn,
        sTransfer,
        sReturn		
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
            option_y = menu_y - 180;
            option_x = x + 180; // Adjust the x-coordinate for the "exit" option
        }

        // Draw the sprite
        draw_sprite(option_sprite, 0, option_x, option_y - 10);

        // Draw text next to the sprite for non-exit options
        if (option_text != "exit" and option_text != "1" and option_text != "2" and option_text != "3") {
            draw_text(option_x + 70, option_y, option_text); // Adjust the x-coordinate for text
        }

		// ADD COUNTS FOR DIFFERENT UNITS
			if (option_text == "Garrison Villager"){
					draw_text(x - 180, option_y, "Count: " + string(oManager.garrison_villager_count));
					draw_text(x + 130, option_y, "Count: " + string(oManager.villager_count));
			}
			if (option_text == "Garrison Soldier"){
					draw_text(x - 180, option_y, "Count: " + string(oManager.garrison_soldier_count));
					draw_text(x + 130, option_y, "Count: " + string(oManager.soldier_count));
			}
			if (option_text == "Garrison Knight"){
					draw_text(x - 180, option_y, "Count: " + string(oManager.garrison_knight_count));
					draw_text(x + 130, option_y, "Count: " + string(oManager.knight_count));
			}			
			
        // Check if the mouse is over the option
        if (point_in_rectangle(mouse_x, mouse_y, option_x - 50, option_y - 10, option_x + 50, option_y + 10)) {
            // Highlight the option when the mouse is over it

            // Check for left mouse button click
            if (mouse_check_button_pressed(mb_left)) {
                // Add logic for the selected option
                // For example, you might want to handle different actions based on the selected option
                if (option_text == "Garrison Villager") {
                    if (oManager.villager_count >= 1) {
                        oManager.villager_count -= 1;
                        oManager.garrison_villager_count += 1;
                        show_debug_message(oManager.barrack_villager_count);
                    }
                } else if (option_text == "1") {
                    if (oManager.garrison_villager_count >= 1) {
                        oManager.villager_count += 1;
                        oManager.garrison_villager_count -= 1;
                        show_debug_message(oManager.barrack_villager_count);
                    }
				} else if (option_text == "Garrison Soldier") {
                    if (oManager.soldier_count >= 1) {
                        oManager.soldier_count -= 1;
                        oManager.garrison_soldier_count += 1;
                        show_debug_message(oManager.garrison_soldier_count);
                    }					
                } else if (option_text == "2") {
                    if (oManager.garrison_soldier_count >= 1) {
                        oManager.soldier_count += 1;
                        oManager.garrison_soldier_count -= 1;
                        show_debug_message(oManager.garrison_soldier_count);
                    }	
				} else if (option_text == "Garrison Knight") {
                    if (oManager.knight_count >= 1) {
                        oManager.knight_count -= 1;
                        oManager.garrison_knight_count += 1;
                        show_debug_message(oManager.garrison_knight_count);
                    }					
                } else if (option_text == "3") {
                    if (oManager.garrison_knight_count >= 1) {
                        oManager.knight_count += 1;
                        oManager.garrison_knight_count -= 1;
                        show_debug_message(oManager.garrison_knight_count);
                    }							
                } else if (option_text == "exit") {
                    menu_open = false;
                    show_debug_message("Trying to exit");
                }
            }
        }
    }
}


