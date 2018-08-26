/// @description Triggered Event

inst = instance_create_layer(x-20, y-20, "Instances", oTextPrinter);
with (inst) {
	str = other.strToPrint;
}