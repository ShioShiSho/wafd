execute as @a[scores={isPlaying=1}] run tellraw @a ["",{"selector":"@s","color":"green"},{"text":" is the winner!","color":"green"}]

gamemode spectator @a
effect give @a instant_health 10 10

teleport @a 2 116 0
gamemode adventure @a

scoreboard players set game_state game_data 3