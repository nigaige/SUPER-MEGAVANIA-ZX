if (!is_attacking && !is_damaged){
	vit_X = move_X * walk;
}else if (is_attacking && !is_damaged){
	if (image_index<=4){
		vit_X = sign(image_xscale) * ATT1_x_speed;
	}
}else{
	if (damage_taken<25){
		vit_X = -sign(image_xscale) * LDAM_x_speed
	}else{
		vit_X = -sign(image_xscale) * HDAM_x_speed
	}
}