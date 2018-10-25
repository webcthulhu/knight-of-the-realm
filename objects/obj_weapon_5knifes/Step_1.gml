/// @description
x = obj_player.x;
y = obj_player.y;

var _angle = point_direction(x, y, mouse_x, mouse_y);

firing_delay = firing_delay - 1;

if (mouse_check_button(mb_left)) && (firing_delay < 0) {
	ScreenShake(2, 10);
	firing_delay = 25;
	var _i = 0;
	var _angles = [
		_angle - (dispersion * 2),
		_angle - dispersion,
		_angle,
		_angle + dispersion,
		_angle + (dispersion * 2)
	];
	repeat(5) {
		var _knife = instance_create_layer(x, y, "ammo", obj_ammo_knife);
		_knife.speed = 10;
		_knife.direction = _angles[_i];
		_knife.image_angle = _angles[_i];
		_i++;
	}
	
}