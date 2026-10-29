
var col_group = global.collision_group_obstecales_1

if (x = xprevious && can_move) x += spd * dir

if place_meeting(x + 5 * dir,y,col_group)
{
	dir *= -1
}


if move_y < fall_max
{
	move_y ++
}

move_x = dir * spd

move_and_collide(move_x,move_y,col_group,4,undefined,undefined,spd_max,fall_max)






