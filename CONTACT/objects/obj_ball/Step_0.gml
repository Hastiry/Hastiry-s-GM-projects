
var col_group = global.collision_group_obstecales_1
var col_group_jump_reset = global.collision_group_jump_reset




var _hor = keyboard_check(vk_right) - keyboard_check(vk_left)

var spd_sign = spd * sign(spd)


switch(_hor)
{
	
	case 1:
		dir = 1
		
	break;
	
	case -1:
		dir = -1
		
	break;
	
}

if (spd_sign <= spd_max or can_move)
{
	switch (_hor)
	{
		case 1:
			 if spd_sign < spd_max
			 {
				spd += spd_inc
			 }
		break;
		
		
		case -1:
			if spd_sign < spd_max
			{
				spd -= spd_inc
			}
		break;
	
		//default:
		//	spd += dir * spd_dec
		//break;
	
	}
}
else if  (not can_move and (spd > 0 or spd < 0))
{
	switch(_hor)
	{
		default:
		spd -= dir * spd_dec
		break;
		
		
	}
	
	
}

//if  (not can_move and (spd > 0 or spd < 0))
//{
//	switch(_hor)
//	{
//		default:
//		spd -= dir * spd_dec
//		break;
		
		
//	}
	
	
//}

if ( _hor != 0) can_move = true
else can_move = false









//if (spd < spd_max and _hor != 0) spd += spd_inc
//else if (spd != 0 and spd > 0) spd -= spd_dec

//if (spd < 0) spd = 0

if can_move
{
	//move_x = dir * spd
	move_x = spd
}
//else if (spd > 0 or spd < 0)spd -= dir * spd_dec



#region jumping
if place_meeting(x,col_gap + y,col_group_jump_reset)
{
	jump_num = jump_max
	move_y = 0
}


if keyboard_check_pressed(vk_space) && not jump_num <= 0
{
	move_y = -spd_jump
	jump_num --
}

if move_y < fall_max
{
	move_y += spd_fall 
}

if place_meeting(x,y,obj_launch_pad)
{
	move_y = -20
}


if place_meeting(x,y - col_gap,col_group)
{
	move_y = 0
	move_y += spd_fall
}



#endregion


if place_meeting(x, col_gap + y,obj_belt)
{
	var belt =instance_nearest(x,col_gap + y,obj_belt)
	
	move_x += belt.dir * belt.spd
	
}

if (place_meeting(x + 5,y,col_group) or place_meeting(x - 5,y,col_group) ) spd = 0




move_and_collide(move_x,move_y,col_group,4,undefined,undefined,spd_max,fall_max)






