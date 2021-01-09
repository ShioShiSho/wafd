# Scoreboards in lobby - setup

scoreboard objectives add Lobby dummy

# Create objective, add players and add colours

scoreboard players add Active_players Lobby 0
team add Cyan
team join Cyan Active_players
team modify Cyan color aqua

scoreboard players add Ready Lobby 0
team add Green
team join Green Ready
team modify Green color green

scoreboard players add Not_ready Lobby 0
team add Red
team join Red Not_ready
team modify Red color red

scoreboard players add Start_min_players Lobby 3

# Scoreboard in lobby - reset
scoreboard players reset *

# Lobby

# Button press to join staging
execute as @p run scoreboard players set @s deaths 100
scoreboard players add Active_players Lobby 1
scoreboard players add Not_ready Lobby 1

# Lobby Loop:
execute store result score Active_players Lobby if entity @a[gamemode=adventure, x=-13, dx=27, y=122, dy=3, z=-13, dz=27]
execute store result score Not_ready Lobby if entity @a[gamemode=adventure, x=-8, y=122, z=-8, dx= 16, dy=3, dz=16] 
execute store result score Ready Lobby unless entity @a[gamemode=adventure, x=-8, y=122, z=-8, dx= 16, dy=3, dz=16]
execute if score Ready Lobby = Active_players Lobby if score Active_players Lobby >= Minimum_players Lobby run function wafd:start_game

# Starting game - initial teleport to islands

execute as @a[gamemode=adventure] run execute as @s unless entity @s[<within staging volume>] 
execute as @a[gamemode=adventure, <within staging volume>] 

# Gamestates: 0 - setup, 1 - lobby, 2 - transitional setup, 3 - Main game loop, 
# on game state 3, start round_timer 
