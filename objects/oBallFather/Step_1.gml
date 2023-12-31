// Calcula a distância entre oBall e oRedirector
var _distance_to_redirector = point_distance(x, y, my_redirector.x, my_redirector.y);

// Verifica se oBall está próximo o suficiente de oRedirector
if (_distance_to_redirector > proximity_distance) and redirector_check == false  {
    // Calcula a direção para oRedirector
    direction = point_direction(x, y, my_redirector.x, my_redirector.y);
    
    // Calcula as velocidades horizontal e vertical baseadas na direção
    xspd = lengthdir_x(spd, direction);
    vspd = lengthdir_y(spd, direction);
    
    // Move oBall na direção de oRedirector
    x += xspd;
    y += vspd;
} else {redirector_check = true;}