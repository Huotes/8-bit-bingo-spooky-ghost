if (ball_creation_index < 29)
{
    // Criar oBall
    var new_ball = instance_create_depth(x, y, 9, oBall);

    // Definir o ball_id consecutivo
    new_ball.ball_id = ball_creation_index;

    // Incrementar o índice para a próxima bola
    ball_creation_index += 1;

    // Redefinir o alarme para criar a próxima bola após um pequeno atraso
    alarm[0] = 5;
}