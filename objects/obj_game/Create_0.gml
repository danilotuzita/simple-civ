global.game = self; 
global.map = instance_create_layer(0, 0, "Hidden_Instances", obj_map);

player1 = instance_create_layer(0, 0, "Instances", obj_human_player);
player2 = instance_create_layer(0, 0, "Instances", obj_ai_player);

player1.player = PLAYER1;
player2.player = PLAYER2;