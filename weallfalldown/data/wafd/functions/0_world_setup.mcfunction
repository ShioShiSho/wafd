function wafd:lobby_reset
scoreboard objectives remove game_data
scoreboard objectives add game_data dummy
scoreboard players set current_game_state game_data 0
scoreboard 