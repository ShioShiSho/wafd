execute unless score Active_players Lobby matches 2..16 run tellraw @p {"text":"Minimum 2 players in staging (Max 16) needed to force start.","color":"red"}

execute if score Active_players Lobby matches 2..16 run scoreboard players set game_state game_data 1
execute if score Active_players Lobby matches 2..16 run tellraw @a ["",{"text":"Game forced to start by ","color":"aqua"},{"selector":"@p","color":"aqua"}]