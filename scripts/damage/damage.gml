if (place_meeting(x,y,obj_damage) && !is_damaged){
	instance = instance_place(x,y,obj_damage);
	is_damaged = true;
	is_attacking = false;
	damage_taken = instance.pow;
	show_debug_message(damage_taken);
	if (damage_taken<25){
		vit_Y = LDAM_y_speed;
	}else{
		vit_Y = HDAM_y_speed;
	}
}
