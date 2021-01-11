execute if score game_state game_data matches -1 run function wafd:stop
execute if score game_state game_data matches 0 run function wafd:lobby/lobby
execute if score game_state game_data matches 1 run function wafd:game_setup/game_setup
execute if score game_state game_data matches 2 run function wafd:game_loop/game_loop
execute if score game_state game_data matches 3 run function wafd:game_end

# Always:

execute unless score game_state game_data matches -1..3 run scoreboard players set game_state game_data 0
execute unless score Minimum_to_start Lobby matches 2..16 run scoreboard players set Minimum_to_start Lobby 16
