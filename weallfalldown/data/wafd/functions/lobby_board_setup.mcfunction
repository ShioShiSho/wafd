scoreboard objectives remove Lobby
scoreboard objectives add Lobby dummy

# Create objective, add players and add colours

scoreboard players add Active_players Lobby 0
team remove Cyan
team add Cyan
team join Cyan Active_players
team modify Cyan color aqua

scoreboard players add Ready Lobby 0
team remove Green
team add Green
team join Green Ready
team modify Green color green

scoreboard players add Not_ready Lobby 0
team remove Green
team add Red
team join Red Not_ready
team modify Red color red

scoreboard players add Start_min_players Lobby 3