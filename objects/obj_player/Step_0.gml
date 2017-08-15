key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));

// Calculate movement
var horizontal_move = key_right - key_left;
var vertical_move = key_down - key_up;

horizontal_speed = horizontal_move * walk_speed;
vertical_speed = vertical_move * walk_speed;

// Horizontal collision
if (place_meeting(x + horizontal_speed, y, obj_wall)) {
	while(!place_meeting(x + sign(horizontal_speed), y, obj_wall)) {
		x = x + sign(horizontal_speed);
	}
	horizontal_speed = 0;
}
x = x + horizontal_speed;

// Vertical collision
if (place_meeting(x, y + vertical_speed, obj_wall)) {
	while(!place_meeting(x, y + sign(vertical_speed), obj_wall)) {
		y = y + sign(vertical_speed);
	}
	vertical_speed = 0;
}
y = y + vertical_speed;

// Animations
if (horizontal_speed > 0) image_angle = 0;
if (horizontal_speed < 0) image_angle = 180;
if (vertical_speed > 0) image_angle = 270;
if (vertical_speed < 0) image_angle = 90;


