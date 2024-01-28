
day_count = 1
player_gold = 0

// total unit counts
total_unit_count = 0
total_unassigned_count= 0

//unit counts
villager_count = 15
soldier_count = 3 
knight_count = 0

// special unit count 
champion_count = 0
// barrack count
barrack_villager_count = 0
barrack_soldier_count = 0
barrack_knight_count = 0
// Garrison
garrison_villager_count = 0
garrison_soldier_count = 0
garrison_knight_count = 0

// Enemy power values
goblin_power = 1;
skeleton_power = 5;
dark_wizard_power = 10;

//switch if hordes been sent 

Horde_attack = 0 

//delay
//spawn_delay = 5*room_speed; 
alarm[0] = -1;
alarm[1] = -1;

start_new_day()

enum GameState {
    Planning,
    Defending,
    // Add more states as needed
}
game_state = GameState.Planning


