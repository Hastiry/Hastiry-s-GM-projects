
if keyboard_check_pressed(ord("R"))
{
	game_restart()
}

if keyboard_check_pressed(vk_escape)
{
	game_end()
}

if keyboard_check_pressed(vk_return)
{
	if room_next(room) != -1
	{
		room_goto_next()
	}
}