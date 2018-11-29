entities_update();


get_input();
isattacking();
jumping();
gravite();
move_x();
collision();
damage();

gestion_sprite_player();

x+=vit_X;
y+=vit_Y;

obj_slash.x = x;
obj_slash.y = y;
