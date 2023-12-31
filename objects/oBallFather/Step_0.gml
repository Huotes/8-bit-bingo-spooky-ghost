padded_balls_number = string(random_number < 10 ? "0" + string(random_number) : string(random_number));

my_redirector = global.myRedirector[my_level];
my_checkpoint = global.myCheckpoint[ball_id];
var _distance_to_my_checkpoint = point_distance(x, y, my_checkpoint.x, my_checkpoint.y);	
var _direction_to_my_checkpoint = point_direction(x, y, my_checkpoint.x, my_checkpoint.y);


if ball_id >= 15
{
	my_level = 1
}
else if ball_id <= 14
{
	my_level = 0
}


if redirector_check == true and checkpoint_check == false and _distance_to_my_checkpoint > proximity_distance
{
	direction = _direction_to_my_checkpoint;
	
	// Calcula as velocidades horizontal e vertical baseadas na direção
    xspd = lengthdir_x(spd, direction);
    vspd = lengthdir_y(spd, direction);
	
	// Move a bola para o checkpoint
    x += xspd;
    y += vspd;
}

if x == my_checkpoint.x and y == my_checkpoint.y
{
    // Se oBall está próximo o suficiente de oRedirector, define a posição de oBall para oRedirector
    x = my_checkpoint.x;
    y = my_checkpoint.y;

    // Define as velocidades como zero para parar o movimento
    xspd = 0;
    vspd = 0;
	checkpoint_check = true;
}