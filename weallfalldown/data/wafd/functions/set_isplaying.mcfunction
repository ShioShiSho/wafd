scoreboard players set @a[gamemode=adventure, x=-13, dx=27, y=122, dy=3, z=-13, dz=27] isPlaying 1

execute as @a run execute unless score @s isPlaying matches 1 run scoreboard players set @s isPlaying 0

gamemode spectator @a[scores={isPlaying=0}]