ball_id = 0;

my_level = 0;

//velocidades
xspd = 0;
vspd = 0;
spd = 10;

//marcadores de passagem
redirector_check = false;
checkpoint_check = false;
randomize();
random_number = int64(random_range(1,90))
ball_number = random_number;
my_ball_number = ball_number;
padded_balls_number = 0;

//registrar marcadores
my_redirector = 0;
my_checkpoint = 0;

//medidores de distancias
proximity_distance = 5;