execute store result score Active_players Lobby if entity @a[gamemode=adventure, x=-13, dx=27, y=122, dy=3, z=-13, dz=27]
execute store result score Not_ready Lobby if entity @a[gamemode=adventure, x=-8, y=122, z=-8, dx= 16, dy=3, dz=16] 
execute store result score Ready Lobby unless entity @a[gamemode=adventure, x=-8, y=122, z=-8, dx= 16, dy=3, dz=16]
execute if score Ready Lobby = Active_players Lobby if score Active_players Lobby >= Minimum_players Lobby run function wafd:start_game
