# Teleport to staging if player slots available i.e. less than 16
execute if score Active_players Lobby matches ..15 as @p[x=-7, dx=0.5, y=116, dy=2, z=0, dz=1, gamemode=adventure] run teleport @s 5 122 0

# Teleport from staging back to lower lobby when falling down centre block in staging
execute as @a[x=0, dx=1, y=121, dy=0.5, z=0, dz=1, gamemode=adventure] run teleport -5 116 0
