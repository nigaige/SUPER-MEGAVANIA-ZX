


/********set action_id***********/


if (!is_attacking && !is_damaged){
	switch(on_ground){
		case(true):
			if (!was_on_ground || landing){
				action_id = LAND;
			}else if(move_X!=0){
				action_id = WALKING;
			}else{
				action_id = IDLE;
			}
			break;
		
		case(false):
			if(vit_Y<0){ 
				action_id = JUMP;
			}else{
				action_id = FALL;
			}
			break;
	}
}else{
	if (is_attacking){
		action_id = ATT1;
	}else{
		if (damage_taken<25){
			action_id = LDAM;
		}else{
			action_id = HDAM;		
		}
	}
}
was_on_ground = on_ground;


/*******verification of previous_id*******/

if (previous_id != action_id){
	image_index = 0;
	sprite_compteur = 0;
	previous_id = action_id;
}


/*******direction faced************/

if (move_X!=0 && !is_attacking && !is_damaged) {
	image_xscale = sign(move_X);
}



/******sprite selection***********/

switch(action_id){
	case(IDLE):
		sprite_index = spr_player_idle;
		sprite_compteur++;
		if (sprite_compteur >= IDLE_speed){
			image_index++;
			sprite_compteur = 0;
		}
		break;
		
	case(WALKING):
		sprite_index = spr_player_run;
		sprite_compteur++;
		if (sprite_compteur >= WALKING_speed){
			image_index++;
			sprite_compteur = 0;
		}
		break;
		
	case(JUMP):
		sprite_index = spr_player_jump;
		break;
	case(FALL):
		sprite_index = spr_player_fall;
		break;
	case(LAND):
		landing = true;
		sprite_compteur++;
		sprite_index = spr_player_crouch;
		if (sprite_compteur >= LAND_speed){
			image_index++;
			sprite_compteur = 0;
			if (image_index == 3){
				landing = false;
				sprite_index = spr_player_idle;
			}
		}
		break;
	case(ATT1):
		sprite_compteur++;
		sprite_index = spr_player_attack_1;
		if (sprite_compteur >= ATT1_speed){
			image_index++;
			sprite_compteur = 0;
			if (image_index == 5){
				is_attacking = false;
				if (on_ground){sprite_index = spr_player_idle;}
				else{sprite_index = spr_player_fall;}
			}
		}
		break;
	case(LDAM):
		sprite_compteur++;
		sprite_index = spr_player_damage_v2;
		if (sprite_compteur >= LDAM_speed){
			image_index++;
			sprite_compteur = 0;
			if (image_index == 6){
				is_damaged = false;
				damage_taken = 0;
				if (on_ground){sprite_index = spr_player_idle;}
				else{sprite_index = spr_player_fall;}
			}
		}
		break;
	case(HDAM):
		sprite_compteur++;
			sprite_index = spr_player_high_damage;
			if (sprite_compteur >= HDAM_speed){
				image_index++;
				sprite_compteur = 0;
				if (image_index == 6){
					is_damaged = false;
					damage_taken = 0;
					if (on_ground){sprite_index = spr_player_idle;}
					else{sprite_index = spr_player_fall;}
				}
			}
		break;
	
	default:
		break;
		






}
