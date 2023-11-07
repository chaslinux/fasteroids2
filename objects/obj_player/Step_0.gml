/// @description Insert description here
// You can write your code in this editor

var _upkey = keyboard_check(ord("W"));
var _downkey = keyboard_check(ord("S"));
var _leftkey = keyboard_check(ord("A"));
var _rightkey = keyboard_check(ord("D"));
var _firekey = keyboard_check_pressed(vk_space);

#region Movement
if _upkey
{
	motion_add(image_angle, 0.1);	
}

if _leftkey
{
	image_angle += 4;	
}

if _rightkey
{
	image_angle -=4;	
}

move_wrap(true,true,0);
#endregion

#region Shooting
if _firekey
{
	instance_create_layer(x,y, "Instances", obj_player_bullet);	
	audio_play_sound(snd_shoot,0,false);
}
#endregion
