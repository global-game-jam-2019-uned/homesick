//scr_player_input

//Variables para calcular movimiento
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
key_smell = keyboard_check_pressed(vk_shift) || keyboard_check_pressed(vk_down);