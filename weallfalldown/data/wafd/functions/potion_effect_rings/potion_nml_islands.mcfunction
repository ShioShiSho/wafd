# Outside NML border

execute positioned 0 79 0 run effect give @a[scores={isPlaying=1}, gamemode=adventure,distance=112..] blindness 2 1

execute positioned 0 79 0 run effect give @a[scores={isPlaying=1},gamemode=adventure, distance=114..] wither 2 1

# Inside of island border

execute positioned 0 95 0 run effect give @a[scores={isPlaying=1},gamemode=adventure, distance=..42] blindness 2 1

execute positioned 0 95 0 run effect give @a[scores={isPlaying=1},gamemode=adventure, distance=..40] wither 2 1