///get_input
right = keyboard_check (ord('D')) || keyboard_check (vk_right);
left = keyboard_check (ord('A')) || keyboard_check (vk_left);
up = keyboard_check (ord('W')) || keyboard_check (vk_up) || keyboard_check_pressed(vk_space);
up_release = keyboard_check_released (ord('W'))|| keyboard_check_released (vk_space) || keyboard_check_released (vk_up);
down = keyboard_check (ord('S')) || keyboard_check (vk_down);
