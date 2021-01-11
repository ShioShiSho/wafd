execute if score Minimum_to_start Lobby matches 3..15 run scoreboard players add Minimum_to_start Lobby 1

execute unless score Minimum_to_start Lobby matches 3..15 run tellraw @p {"text":"Cannot increase minimum players above 16.","color":"red"}