/// @description Insert description here
if (hascontrol) {
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
	key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
} else {
	key_left = 0;
	key_right = 0;
	key_up = 0;
	key_down = 0;
}

XAxis = key_right - key_left;
YAxis = key_down - key_up;

var _direction = point_direction(0, 0, XAxis, YAxis);
var _length = Speed * (XAxis != 0 || YAxis != 0);

XAxis = lengthdir_x(_length, _direction);
YAxis = lengthdir_y(_length, _direction);

if (XAxis != 0) && (place_meeting(x + XAxis, y, obj_impassable)) {
	while(!place_meeting(x + sign(XAxis), y, obj_impassable)) {
		x += sign(XAxis);
	}
	XAxis = 0;
}

if (YAxis != 0) && (place_meeting(x, y + YAxis, obj_impassable)) {
	while(!place_meeting(x, y + sign(YAxis), obj_impassable)) {
		y += sign(YAxis);
	}
	YAxis = 0;
}

x += XAxis;
y += YAxis;

// Animation
image_speed = 2;
if (XAxis == 0 && YAxis == 0) {
	image_speed = 0;
	image_index = 0;
}
if (XAxis != 0) {
	image_xscale = -sign(XAxis);
}