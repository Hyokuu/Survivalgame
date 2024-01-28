// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_enemy(eType){
	instance_create_layer(1100,300 + random_range(-100,100), "Instances", eType);
}