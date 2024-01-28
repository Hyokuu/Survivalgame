/// @description Insert description here
// You can write your code in this editor




 // Draw the rest of the oGameManager

// Draw the villager count at the top left of the screen
draw_set_color(c_white);
 // Use your desired font
 
//Villager count
var text_x = 10; // Adjust as needed
var text_y = 10; // Adjust as needed
draw_text(text_x, text_y, "Villagers: " + string(villager_count));

// soldier count
var text_x = 10; // Adjust as needed
var text_y = 25; // Adjust as needed
draw_text(text_x, text_y, "Soldiers: " + string(soldier_count));

// knight count

var text_x = 10; // Adjust as needed
var text_y = 40; // Adjust as needed
draw_text(text_x, text_y, "Knights: " + string(knight_count));


 // Reset to the default font