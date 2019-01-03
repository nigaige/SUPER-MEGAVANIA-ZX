max_jmp = 2;
nb_jmp = max_jmp;
jump_power = -6
jump = false;
new_jump = false


/*****sprite init******/
depth = 0				//depth of sprite: + deeper// - closer

image_index = 0;
image_speed = 0;

//id of action

#macro IDLE		0
#macro WALKING  1
#macro JUMP		2
#macro FALL		3
#macro LAND		4
#macro ATT1		5
#macro LDAM		6
#macro HDAM		7

action_id = IDLE;
previous_id = IDLE;
was_on_ground = on_ground;
sprite_compteur = 0;
is_attacking = false;
#macro ATT1_x_speed 5
#macro ATT1_y_speed 0 //-4.5
#macro LDAM_x_speed 2
#macro LDAM_y_speed -0.5 
#macro HDAM_x_speed 5
#macro HDAM_y_speed -1




//speed of action
#macro IDLE_speed		6
#macro WALKING_speed	9
#macro LAND_speed		8
#macro ATT1_speed		8
#macro LDAM_speed		3
#macro HDAM_speed		8
#macro JUMP_speed		8
landing = false;


//attack management
instance_create_depth(x,y,1,obj_slash);
