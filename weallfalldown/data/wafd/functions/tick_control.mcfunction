execute if score game_state game_data matches -1 run function wafd:stop
execute if score game_state game_data matches 0 run function wafd:lobby
execute if score game_state game_data matches 1 run function wafd:game_setup
execute if score game_state game_data matches 2 run function wafd:game_loop
execute if score game_state game_data matches 3 run function wafd:game_end
