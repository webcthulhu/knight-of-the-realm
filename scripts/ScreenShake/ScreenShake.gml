/// @desc ScreenShake(magnitude,frames)
/// @arg Magnitude sets the strength of the shake
/// @arg Frames sets the length of shakes in frames (60 frames = 1 second at 60 fps)

with (obj_camera) {
	if (argument0 > shake_remain) {
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	}
}