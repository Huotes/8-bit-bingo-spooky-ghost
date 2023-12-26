// Função para inicializar e embaralhar a lista de números
function bet_value_setter()
{

// Increment the index (loop back to 0 if at the end)
global.current_bet_value_index = (global.current_bet_value_index + 1) mod array_length(global.bet_value);

// Set the bet_label_value to the new value in global.bet_value
bet_label_value = string(global.bet_value[global.current_bet_value_index]);
}

function initialize_numbers(list)
{
    ds_list_clear(list);
    for (var i = 1; i <= 90; i++)
    {
        ds_list_add(list, i);
    }
    ds_list_shuffle(list);
}

