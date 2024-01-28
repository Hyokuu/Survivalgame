/// @description Insert description here
// You can write your code in this editor

// oBarracks Step Event
if (mouse_check_button_pressed(mb_left) && instance_position(mouse_x, mouse_y, oBarracks)) {
    show_debug_message("Clicked on oBarracks. Attempting to open menu.");

    // Set the menu_open variable to true
    oBarrackMenu.menu_open = true;

    // Set the menu position to a fixed location (e.g., room center)

}