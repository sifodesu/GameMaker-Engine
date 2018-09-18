enum menu_page {
	main,
	settings	
}

enum menu_element_type {
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

ds_menu_main = create_menu_page(
	["RESUME",	menu_element_type.script_runner, resume_game],
	["SETTINGS", menu_element_type.page_transfer, menu_page.settings],
	["EXIT",	menu_element_type.script_runner, exit_game]
);

ds_menu_settings = create_menu_page(
	["RESOLUTION", menu_element_type.script_runner, change_resolution],
	["BACK", menu_element_type.page_transfer, menu_page.main]
);


page = 0;
menu_pages = [ds_menu_main, ds_settings]

var i = 0, array_len = array_length_1d(menu_pages);
repeat(array_len) {
	menu_option[i] = 0;
	i++;
}