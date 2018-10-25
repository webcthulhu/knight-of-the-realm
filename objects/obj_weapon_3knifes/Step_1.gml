/// @description
x = obj_player.x;
y = obj_player.y;

var _angle = point_direction(x, y, mouse_x, mouse_y);

firing_delay = firing_delay - 1;

if (mouse_check_button(mb_left)) && (firing_delay < 0) {
	firing_delay = 25;
	var _angles = [_angle - dispersion, _angle, _angle + dispersion];
	var _knife1 = instance_create_layer(x, y, "ammo", obj_ammo_knife);
	var _knife2 = instance_create_layer(x, y, "ammo", obj_ammo_knife);
	var _knife3 = instance_create_layer(x, y, "ammo", obj_ammo_knife);
	with (_knife1) {
		speed = 10;
		direction = _angles[0];
		image_angle = _angles[0];
	}
	with (_knife2) {
		speed = 10;
		direction = _angles[1];
		image_angle = _angles[1];
	}
	with (_knife3) {
		speed = 10;
		direction = _angles[2];
		image_angle = _angles[2];
	}
}