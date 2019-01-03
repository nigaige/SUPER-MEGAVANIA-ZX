new_jump = false;
if (!is_attacking && !is_damaged){
	if (jump && nb_jmp>0){
		vit_Y = jump_power;
		nb_jmp--;
		new_jump = true;
	}	
	if(on_ground && vit_Y >= 0){
		nb_jmp = max_jmp;
	}
}
