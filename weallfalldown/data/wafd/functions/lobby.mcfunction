# Health and regeneration

difficulty peaceful
effect give @a instant_health 3 3

# Update player counts

execute store result score Active_players Lobby if entity @a[gamemode=adventure, x=-13, dx=27, y=122, dy=3, z=-13, dz=27]

execute store result score Not_ready Lobby if entity @a[gamemode=adventure, x=-8, y=122, z=-8, dx= 16, dy=3, dz=16] 

execute store result score Ready Lobby unless entity @a[gamemode=adventure, x=-8, y=122, z=-8, dx= 16, dy=3, dz=16]

# Do teleports between lobby and staging

# Teleport to staging
execute if score Active_players Lobby matches ..15 as @p[x=-7, dx=0.5, y=116, dy=2, z=0, dz=1, gamemode=adventure] run teleport 5 122 0

# Teleport from staging back to lower lobby when falling down centre block in staging

execute as @a[x=0, dx=1, y=121, dy=0.5, z=0, dz=1, gamemode=adventure] run teleport -5 116 0

# Exit condition if all players ready

execute if score Ready Lobby = Active_players Lobby if score Active_players Lobby >= Minimum_players Lobby run scoreboard players set game_state game_data 1


