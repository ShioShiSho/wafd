# Set scoreboard visibility

scoreboard objectives setdisplay sidebar Info

# Do hunger boost every 200 ticks / 10 seconds

scoreboard players add hunger_timer game_data 1
execute if score hunger_timer game_data matches 180..199 run function wafd:game_loop/refill_hunger

execute if score hunger_timer game_data matches 200.. run scoreboard players set hunger_timer game_data 1

# Force spectator gamemode for anyone not playing in adventure mode

function wafd:game_loop/force_spectator_gamemode_for_non_participants

# Track spawnpoints for participants

execute as @a[scores={isPlaying=1}] run spawnpoint

# Check for deaths and victory conditions

function wafd:game_loop/check_deaths_victory

# Check for disconnects and combat loggers

function wafd:game_loop/check_disconnect
function wafd:game_loop/check_connect_during_game

# Kill players beneath y=60

kill @a[scores={isPlaying=1}, x=-150, dx=300, y=60, dy=2, z=-150, dz=300] 

# Update players_remaining

execute store result score players_remaining game_data if entity @e[scores={isPlaying=1}]

# Update scoreboards for players left

scoreboard players operation Players_left Info = players_remaining game_data

# Timings and circles

execute if score timer game_data matches 10 run function wafd:game_loop/title

# Spawn and NML

execute if score timer game_data matches 0 run tellraw @a {"text":"Get to no man's land! Ring closing in 5s...","color":"gold"}

execute if score timer game_data matches 100 run worldborder set 229 5

# NML only

execute if score timer game_data matches 150 run tellraw @a {"text":"Shoot the targets above for loot!","color":"green"}

execute if score timer game_data matches 300 run tellraw @a {"text":"Spawn islands are now unavailable.","color":"aqua"}

execute if score timer game_data matches 300..1200 run function wafd:potion_effect_rings/potion_nml_only


# NML + islands

execute if score timer game_data matches 1200 run tellraw @a {"text":"Biome islands are now available!","color":"green"}

execute if score timer game_data matches 1200..2400 run function wafd:potion_effect_rings/potion_nml_islands

# Warning cutting off NML

execute if score timer game_data matches 1800 run tellraw @a {"text":"Cutting off NML in 20s!","color":"gold"}

# Cut off NML

execute if score timer game_data matches 2200 run tellraw @a {"text":"Ring closing off No Man's Land!","color":"red"}

execute if score timer game_data matches 2200 run worldborder set 180 10

# Islands only 2400-4800

execute if score timer game_data matches 2400 run tellraw @a {"text":"No man's land is now unavailable!","color":"aqua"}

execute if score timer game_data matches 2400..4800 run function wafd:potion_effect_rings/potion_islands_only

# Tag Centre armour stands

execute if score timer game_data matches 4800 run function wafd:game_loop/tag_center_lf_armor_stands

# Islands + centre

execute if score timer game_data matches 4800 run tellraw @a {"text":"The centre island is now available!","color":"green"}

execute if score timer game_data matches 4800..6000 run function wafd:potion_effect_rings/potion_islands_and_centre

# Warning cutting off islands

execute if score timer game_data matches 5400 run tellraw @a {"text":"Cutting off Biome Islands in 15s!","color":"gold"}

# Cutting off islands

execute if score timer game_data matches 5700 run tellraw @a {"text":"Ring closing off Biome Islands!","color":"red"}

execute if score timer game_data matches 5700 run worldborder set 180 15

# Untag islands, retag center

execute if score timer game_data matches 6000 run function wafd:game_loop/untag_all_armor_stands

execute if score timer game_data matches 6000 run function wafd:game_loop/tag_center_lf_armor_stands

# Centre island only

execute if score timer game_data matches 6000 run tellraw @a {"text":"Biome Islands now unavailable!","color":"aqua"}

# warning head to castle

execute if score timer game_data matches 6400 run tellraw @a {"text":"Ring closing around castle in 5s - Go inside!","color":"gold"}

# ring closing around castle

execute if score timer game_data matches 6500 run tellraw @a {"text":"Ring closing around castle!","color":"red"}

execute if score timer game_data matches 6500 run worldborder set 20 5

# give jump boost to players stuck in ring

execute if score timer game_data matches 6500..6900 run effect give @a[scores={isPlaying=1}, x=-30, dx=60, y=95, dy=7.5, z=-30, dz=60] jump_boost 1 4

# Castle only

# Wither warning on lower floor

execute if score timer game_data matches 6900 run tellraw @a {"text":"Wither effect on ground floor in 5s","color":"gold"}

# Untag lower floor, retag center upper floor

execute if score timer game_data matches 7000 run function wafd:game_loop/untag_all_armor_stands

execute if score timer game_data matches 7000 run function wafd:game_loop/tag_center_uf_armor_stand

# Wither on lower floor

execute if score timer game_data matches 7000 run tellraw @a {"text":"Avoid the ground floor!","color":"dark_green"}

execute if score timer game_data matches 7000.. run effect give @a[scores={isPlaying=1}, x=-15, dx=30, y=103, dy=2, z=-15, dz=30] wither 2 3

# Warning ring closing to 5

execute if score timer game_data matches 7200 run tellraw @a {"text":"Ring closing to 5 blocks in 5 seconds","color":"gold"}

# Ring closing to 5

execute if score timer game_data matches 7200 run tellraw @a {"text":"Ring closing to 5 blocks!","color":"red"}

execute if score timer game_data matches 7200 run worldborder set 5 5

# Warning Ring closing to 1

execute if score timer game_data matches 7600 run tellraw @a {"text":"Final ring closing in 5s","color":"gold"}

# Ring closing to 1

execute if score timer game_data matches 7700 run tellraw @a {"text":"Final ring!","color":"red"}

execute if score timer game_data matches 7700 run worldborder set 1 5

# Reset worldborder

execute if score timer game_data matches 8400 run worldborder set 300

# Increment timer

scoreboard players add timer game_data 1

execute if score timer game_data matches 8400 run scoreboard players set game_state game_data 3
