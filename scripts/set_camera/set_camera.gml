with (self) {
	// Viewport settings
	view_enabled = true;
	view_set_visible(0, true);
	view_set_wport(0, global.camera_width);
	view_set_hport(0, global.camera_height);
	
	// Camera settings
	camera = camera_create_view(0, 0, global.camera_width, global.camera_height)
	view_set_camera(0, camera);
	
	// Camera following settings
	camera_set_view_target(view_camera[0], oChara);
	camera_set_view_speed(view_camera[0], -1, -1);
	camera_set_view_border(view_camera[0], 96, 96);
}