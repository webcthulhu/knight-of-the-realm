/// @description Insert description here
// You can write your code in this editor
x = obj_player.x;
y = obj_player.y;
image_angle = point_direction(x, y, mouse_x, mouse_y);

firing_delay = firing_delay - 1;
recoil = max(0, recoil - 1);

if (mouse_check_button(mb_left)) && (firing_delay < 0) {
	firing_delay = 25;
	recoil = 4;
	with(instance_create_layer(x, y, "ammo", obj_ammo_knife)) {
		speed = 10;
		direction = other.image_angle + random_range(-3, 3);
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);