/// @description Insert description here
// You can write your code in this editor

instance_destroy(other);
effect_create_above(ef_explosion,x,y,1, c_ltgray);

direction = random(360);

if sprite_index == spr_large_asteroid_1
{
		obj_game.points += 50;
		sprite_index = spr_small_asteroid_1;
		instance_copy(true);
}
else if instance_number(obj_asteroid) < 12
{
	obj_game.points += 50;
	sprite_index = spr_large_asteroid_1;
	x = -100; // outside room to enter as a new rock
}
else
{
	obj_game.points +=100;
	instance_destroy();	
}