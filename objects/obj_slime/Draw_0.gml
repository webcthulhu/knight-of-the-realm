draw_self();

if (Flash > 0) {
	Flash--;
	shader_set(sdr_red);
	draw_self();
	shader_reset();
}

