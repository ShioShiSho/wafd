# Add players who combat log to combat_log scoreboard

execute as @a[scores={leave_game=1, isPlaying=1}] run scoreboard players set @s combat_log 1

# Remove playing status

execute as @a[scores={leave_game=1, isPlaying=1}] run scoreboard players set @s isPlaying 0

