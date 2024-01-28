function spawn_random_enemies(totalPower) {
    var remainingPower = totalPower;
	
	// v shows amount of times it is looping
	v = 1;
    // Loop until we've used up all the power
    for (var i = 0; i < totalPower; i++) {
        // Set a new random seed based on the current time

		//show_debug_message(v);
		v+=1
        randomize();

        // Randomly choose an index for enemy types (CHANGE RANDOM NUMBER BASED ON AMOUNT OF OBJECTS)
        var enemyIndex = irandom(2); // 0, 1, or 2 for three enemy types

        // Map the index to an enemy type
        var enemyType;
        switch (enemyIndex) {
            case 0:
                enemyType = oGoblin;
                break;
            case 1:
                enemyType = oSkeleton;
                break;
            case 2:
                enemyType = oDarkWizard;
                break;
        }

        // Calculate the power of the chosen enemy
        var enemyPower = 0;

        switch (enemyType) {
            case oGoblin:
                enemyPower = oManager.goblin_power;
                break;
            case oSkeleton:
                enemyPower = oManager.skeleton_power;
                break;
            case oDarkWizard:
                enemyPower = oManager.dark_wizard_power;
                break;
        }

        // Check if adding this enemy exceeds the remaining power
        if (enemyPower <= remainingPower) {

            // Spawn the chosen enemy

				instance_create_layer(1200,300 + random_range(-100,100), "Instances", enemyType);



            // Deduct the enemy's power from the remaining power
            remainingPower -= enemyPower;
			
		
        }
		else if (remainingPower > 0){ totalPower +=1} 
    }

	  

	Horde_attack += 1
    max_power = 0; // Reset max_power after spawning enemie
}