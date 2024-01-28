/// @description Insert description here
// You can write your code in this editor
if (mouse_check_button_pressed(mb_left) && instance_position(mouse_x, mouse_y, oVillagerPortrait)) {

	if (portrait_villager_count > 0) {
		show_debug_message("Clicked on ovillagerportrait. Attempting to open menu.");
		instance_create_layer(0,300 + random_range(-100,100), "Instances", oVillager);
		portrait_villager_count -=1; 
	}


}



