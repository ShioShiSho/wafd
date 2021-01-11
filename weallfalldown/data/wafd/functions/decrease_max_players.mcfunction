execute if score Minimum_to_start Lobby matches 3..15 run scoreboard players remove Minimum_to_start Lobby 1

execute unless score Minimum_to_start Lobby matches 3..15 run tellraw @p {"text":"Cannot decrease minimum players below 2.","color":"red"}