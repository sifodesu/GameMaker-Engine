if (array_length_1d(event_info) == 0) {
	return;
}

// If called event has no arguments, we add empty array to
// ensure script_execute() always receive correvt number of params.
var event = event_info[event_index];
if (array_length_1d(event_info[event_index]) == 1) {
	event[1] = [];
}

script_execute(event[0], event[1]);
