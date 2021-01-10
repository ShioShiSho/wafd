defaultgamemode adventure

worldborder damage amount 0.1
worldborder damage buffer 0

worldborder warning distance 0
worldborder warning time 0

worldborder set 300

# Gamerules

gamerule doImmediateRespawn true
gamerule spawnRadius 0
gamerule keepInventory false

# spawnpoint

spawnpoint @a 2 116 0
teleport @a 2 116 0

# Gamemode

gamemode adventure @a

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
scoreboard objectives setdisplay sidebar Lobby

scoreboard players add Active_players Lobby 0
team join Cyan Active_players

scoreboard players add Ready Lobby 0
team join Green Ready

scoreboard players add Not_ready Lobby 0
team join Red Not_ready

scoreboard players add Minimum_to_start Lobby 2
team join Yellow Minimum_to_start

# Scoreboard for game-data (not shown)

scoreboard objectives remove game_data
scoreboard objectives add game_data dummy

scoreboard players set timer game_data -1
scoreboard players set game_state game_data -1
scoreboard players set players_remaining game_data 16
scoreboard players set hunger_timer game_data 0

# Scoreboard shown ingame (Info)

scoreboard objectives remove Info
scoreboard objectives add Info dummy

scoreboard players set Players_left Info 0
team join Green Players_left

scoreboard players set Spectators Info 0
team join Cyan Spectators

scoreboard players set Time_to_next_regen Info 0
team join Yellow Time_to_next_regen

# Scoreboard for players in round

scoreboard objectives remove isPlaying
scoreboard objectives add isPlaying dummy
scoreboard players reset @a isPlaying

# Scoreboard for deaths

scoreboard objectives remove deaths
scoreboard objectives add deaths deathCount
scoreboard players reset @a deaths

# Scoreboard for hunger

scoreboard objectives remove hunger
scoreboard objectives add hunger food
scoreboard players reset @a hunger

# Scoreboard for leaving game

scoreboard objectives remove leave_game
scoreboard objectives add leave_game minecraft.custom:minecraft.leave_game

# Game game_state

scoreboard players set game_state game_data 0












