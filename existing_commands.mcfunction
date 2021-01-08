# Scoreboards in lobby - setup

scoreboard objectives add Lobby dummy
scoreboard players add Active_players Lobby 0
scoreboard players add Ready Lobby 0
scoreboard players add Not_ready Lobby 0

# Secret scoreboard for snowball_thrown


# Scoreboard in lobby - reset
scoreboard players reset *

# Lobby

# Button press to join staging
execute as @p run scoreboard players set @s deaths 100
scoreboard players add Active_players Lobby 1
scoreboard players add Not_ready Lobby 1




