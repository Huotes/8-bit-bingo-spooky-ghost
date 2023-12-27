// Define a distância de proximidade para considerar que oBall atingiu oRedirector
var proximity_distance = 5;

// Calcula a distância entre oBall e oRedirector
var distance_to_redirector = point_distance(x, y, oRedirector.x, oRedirector.y);

if (distance_to_redirector > proximity_distance) {
    // Calcula a direção para oRedirector
    direction = point_direction(x, y, oRedirector.x, oRedirector.y);
    
    // Calcula as velocidades horizontal e vertical baseadas na direção
    xspd = lengthdir_x(spd, direction);
    vspd = lengthdir_y(spd, direction);
    
    // Move oBall na direção de oRedirector
    x += xspd;
    y += vspd;
} else {
    // Se oBall está próximo o suficiente de oRedirector, verifica o objeto oCheckPoint com o mesmo ID
    var checkpoint_id = instance_nearest(x, y, oCheckPoint).checkpoint_id;
    
    // Verifica se o CheckPoint tem o mesmo ID que oBall
    if (checkpoint_id == ball_id) {
        // Define a posição de oBall como a posição de oCheckPoint
        x = oCheckPoint.x;
        y = oCheckPoint.y;

        // Define as velocidades como zero para parar o movimento
        xspd = 0;
        vspd = 0;
        
        // Atualiza o ID da bola para o ID do novo CheckPoint
        ball_id = oCheckPoint.checkpoint_id;
    }
}