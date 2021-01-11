execute as @a[scores={combat_log=1}] run gamemode adventure @s
kill @s
gamemode spectator @s
execute as @s run tellraw @a ["",{"text":"Great news! Combat logger ","color":"aqua"},{"selector":"@s","color":"light_purple"},{"text":"'s items have appeared at the nearest armor stand!","color":"aqua"}]

scoreboard players set @s combat_log 0