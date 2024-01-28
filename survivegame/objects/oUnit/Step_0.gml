/// @description Insert description here
// You can write your code in this editor


switch (state) {

    case "Running":
        // Handle running behavior
        x += unit_speed; // Move to the left

        // Check if the enemy is in range of units
        if (distance_to_object(oEnemy) < unit_range) {
            state = "Attacking"; // Switch to attacking state
        }
        break;

    case "Attacking":
        // Handle attacking behavior
        // Play attack animation, stop moving, etc.
        // Check if the enemy is out of range
        if (distance_to_object(oEnemy) > unit_range) {
            state = "Running"; // Switch back to running state
        }
        break;
}

