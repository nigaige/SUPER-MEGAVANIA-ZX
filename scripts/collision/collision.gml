while (place_meeting(x,y,obj_ground)){
	y-=1;
}


//verticale//
if (!on_ground && place_meeting(x,y+vit_Y,obj_ground)){
	while(place_meeting(x,y+vit_Y,obj_ground)){
		vit_Y -= sign(vit_Y);
	}
}
//coté//
	if (place_meeting(x+vit_X,y,obj_ground)){
		while(place_meeting(x+vit_X,y,obj_ground)){
			vit_X -= sign(vit_X);
		}
	}
	
//diagonal//
if (place_meeting(x+vit_X,y+vit_Y,obj_ground)){
	while(place_meeting(x+vit_X,y+vit_Y,obj_ground)){
		vit_X -= sign(vit_X);
		vit_Y -= sign(vit_Y);
	}
}

