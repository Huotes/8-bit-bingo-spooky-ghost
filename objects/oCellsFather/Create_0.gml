randomize();
card_id = 0;
random_number = int64(random_range(1,90))
// Adiciona um zero à frente se random_number for menor que 10
padded_number = string(random_number < 10 ? "0" + string(random_number) : string(random_number));
cell_id = 0;
cell_number = 0;
//my_card_id = oCard.card_id;
