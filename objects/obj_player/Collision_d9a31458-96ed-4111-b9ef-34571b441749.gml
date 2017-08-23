with(other) {
	instance_create_layer(other.x, other.y, "food", obj_food_score)
	instance_destroy();
	with(obj_score) {
		thescore = thescore + 10;
	}

}