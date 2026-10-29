

function fun_jump(
jump_call,
spd_jump,
jump_num,
jump_max,
col_gap,
col_group_jump_reset,
col_group,
fall_max,
move_y
)
{
	
	
	if place_meeting(x,col_gap + y,col_group_jump_reset)
	{
		jump_num = jump_max
		move_y = 0
	}


	if jump_call && not jump_num <= 0
	{
		move_y = -spd_jump
		jump_num --
	}

	if move_y < fall_max
	{
		move_y ++
	}
		
		move_and_collide(0,move_y,col_group,4,undefined,undefined,undefined,fall_max)
}


function fun_move(
dir,
spd,
spd_max,
col_group
)
{
	
	
	
	//var col_group = global.collision_group_obstecales_1
	//var col_group_jump_reset = global.collision_group_jump_reset
	
	
	move_x = dir * spd
	
	
	
	
	
	
	move_and_collide(move_x,0,col_group,4,undefined,undefined,spd_max)

}








