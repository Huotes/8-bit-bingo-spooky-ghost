// Substitua obj_alvo pelo nome real do objeto alvo
var obj_alvo = instance_find(oBombo, 0);

// Verifique se o objeto alvo foi encontrado antes de chamar o evento
if (obj_alvo != noone)
{
    // Chame o User Event 0 do objeto alvo
    event_perform(ev_user0, obj_alvo);
}