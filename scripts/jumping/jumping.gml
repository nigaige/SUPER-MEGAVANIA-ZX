if (!is_attacking){
	if (jump && nb_jmp>0){
		vit_Y = jump_power;
		nb_jmp--;
	}	
	if(on_ground && vit_Y >= 0){
		nb_jmp = max_jmp;
	}
}
