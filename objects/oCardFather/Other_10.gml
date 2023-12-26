// Atribui números aleatórios não utilizados a todas as oCardCell do oCard correspondente usando o card_id
with (oCardCell)
{
    if (card_id == other.card_id)
    {
        // Verifica se há números disponíveis no array
        if (ds_list_size(other.available_numbers) > 0)
        {
            // Atribui os números sequencialmente às oCardCell
            padded_number = string(ds_list_find_value(other.available_numbers, 0) < 10 ? "0" + string(ds_list_find_value(other.available_numbers, 0)) : string(ds_list_find_value(other.available_numbers, 0)));

            // Remove o número atribuído do array
            ds_list_delete(other.available_numbers, 0);

            // Verifica se a lista está vazia e reinicia se necessário
            if (ds_list_size(other.available_numbers) == 0)
            {
                initialize_numbers(other.available_numbers);
            }
        }
    }
}