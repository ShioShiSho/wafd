# Outside NML border

execute positioned 0 79 0 run effect give @a[scores={isPlaying=1}, gamemode=adventure,distance=112..] blindness 2 1

execute positioned 0 79 0 run effect give @a[scores={isPlaying=1},gamemode=adventure, distance=114..] wither 2 3

# Inside of NML border

execute positioned 0 79 0 run effect give @a[scores={isPlaying=1}, distance=..86] blindness 2 1

execute positioned 0 79 0 run effect give @a[scores={isPlaying=1}, distance=..84] wither 2 1