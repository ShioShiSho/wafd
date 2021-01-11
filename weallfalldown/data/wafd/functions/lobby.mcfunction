# Health and regeneration

difficulty peaceful
effect give @a instant_health 3 3

# Update player counts

execute store result score Active_players Lobby if entity @a[gamemode=adventure, x=-13, dx=27, y=122, dy=3, z=-13, dz=27]

execute store result score Not_ready Lobby if entity @a[gamemode=adventure, x=-8, y=122, z=-8, dx= 16, dy=3, dz=16] 

scoreboard players operation #Active_players_copy Lobby = Active_players Lobby

execute store result score Ready Lobby run scoreboard players operation #Active_players_copy Lobby -= Not_ready Lobby

# Do teleports between lobby and staging

# Teleport to staging if less than 16 players
execute positioned -9 116 0 if score Active_players Lobby matches ..15 as @p[x=-9, dx=0.5, y=116, dy=2, z=0, dz=1, gamemode=adventure] run function wafd:accept_player

execute positioned -9 116 0 if score Active_players Lobby matches 16 as @p[x=-8, dx=0.5, y=116, dy=2, z=0, dz=1, gamemode=adventure] run function wafd:reject_player

# Teleport from staging back to lower lobby when falling down centre block in staging

execute as @a[x=0, dx=1, y=121, dy=0.5, z=0, dz=1, gamemode=adventure] run teleport @s 2 116 0 facing 7 117 0

# Check if too many players:

execute if score Active_players Lobby matches 17.. run function wafd:max_players_exceeded

# Exit condition if all players ready

execute if score Ready Lobby = Active_players Lobby if score Active_players Lobby >= Minimum_players Lobby run scoreboard players set game_state game_data 1


