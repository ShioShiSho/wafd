defaultgamemode adventure

worldborder damage amount 0.1
worldborder damage buffer 0

worldborder warning distance 0
worldborder warning time 0

# Colours 

team remove Cyan
team add Cyan
team modify Cyan color aqua

team remove Green
team add Green
team modify Green color green

team remove Red
team add Red
team modify Red color red

team remove Yellow
team add Yellow
team modify Yellow color yellow

# Scoreboard for Lobby

scoreboard objectives remove Lobby
scoreboard objectives add Lobby dummy

scoreboard players add Active_players Lobby 0
team join Cyan Active_players

scoreboard players add Ready Lobby 0
team join Green Ready

scoreboard players add Not_ready Lobby 0
team join Red Not_ready

scoreboard players add Minimum_to_start Lobby 3
team join Yellow Minimum_to_start

# Scoreboard for game-data (not shown)

scoreboard objectives remove game_data
scoreboard objectives add game_data dummy

scoreboard players set timer game_data -1
scoreboard players set game_state game_data -1
scoreboard players set players_remaining game_data 16
scoreboard players set timer_increase_on_death game_data 0
scoreboard players set players_yet_to_spawn game_data 16

# Scoreboard shown ingame (Info)

scoreboard objectives remove Info
scoreboard objectives add Info dummy

scoreboard players set Players_left Info 0
team join Green Players_left

scoreboard players set Spectators Info 0
team join Cyan Spectators

scoreboard players set Time_to_next_regen Info 0
team join Yellow Time_to_next_regen

# Scoreboard for deaths

scoreboard objectives add deaths deathCount
scoreboard players reset @a deaths

# Scoreboard for hunger

scoreboard objectives add hunger food
scoreboard players reset @a hunger

# Scoreboard for leaving game


# General constants

scoreboard players set NONE value 0
scoreboard players set FALSE value 0
scoreboard players set TRUE value 1

# Timing values

scoreboard players set RING_0 value 12000


scoreboard players set WARNING_RING_1 value 21400
scoreboard players set RING_1 value 21600


scoreboard players set WARNING_RING_2 value 28000
scoreboard players set RING_2 value 28200


scoreboard players set WARNING_RING_3 value 32500
scoreboard players set RING_3 value 32700

scoreboard players set WARNING_RING_4 value 36400
scoreboard players set RING_4 value 36600

scoreboard players set WARNING_RING_5 value 39400
scoreboard players set RING_5 value 39600

scoreboard players set WARNING_RING_6 value 41800
scoreboard players set RING_6 value 42000

# Bossbars for time left till next ring

bossbar add c0 ""













