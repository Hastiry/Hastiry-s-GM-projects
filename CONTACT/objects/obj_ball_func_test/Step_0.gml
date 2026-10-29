
//var col_group = global.collision_group_obstecales_1
//var col_group_jump_reset = global.collision_group_jump_reset

////_hor_R = keyboard_check(vk_right)
////_hor_L = keyboard_check(vk_left)


////if not _hor_L
////{
////	move_x = spd
////}
////else if _hor_R
////{
////	move_x = -spd
////}


////if not (_hor_R and move_x = 0)
////{
////	move_x ++
////}
////else if not (_hor_L and move_x = 0)
////{
////	move_x --
////}



//var _hor = keyboard_check(vk_right) - keyboard_check(vk_left)

////var hor = variable_clone(_hor)

//move_x = _hor * spd

////if move_x != 0 && spd < spd_max
////{
////	spd += 0.1
////}
////else if move_x = 0 && spd > spd_default
////{
////	spd -= 0.4
////}



//#region jumping
//if place_meeting(x,col_gap + y,col_group_jump_reset)
//{
//	jump_num = jump_max
//	move_y = 0
//}


//if keyboard_check_pressed(vk_space) && not jump_num <= 0
//{
//	move_y = -spd_jump
//	jump_num --
//}

//if move_y < fall_max
//{
//	move_y ++
//}

//if place_meeting(x,y,obj_launch_pad)
//{
//	move_y = -20
//}

//#endregion




//move_and_collide(move_x,move_y,col_group,4,undefined,undefined,spd_max,fall_max)


var dir = keyboard_check(vk_right) - keyboard_check(vk_left)
var col_group = global.collision_group_obstecales_1
var col_group_jump = global.collision_group_jump_reset



fun_move(dir,spd,spd_max,col_group)

jump_call = false

if keyboard_check_pressed(vk_space)
{
	jump_call = true
	
}

fun_jump(jump_call,spd_jump,jump_num,jump_max,col_gap,col_group,col_group_jump,fall_max,-20)

if (jump_call) jump_call = false





