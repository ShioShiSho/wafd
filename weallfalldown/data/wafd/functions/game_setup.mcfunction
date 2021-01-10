# Set players isPlaying to 1 for participants

function wafd:set_isplaying

# Set deaths to 0 for all players

scoreboard players set @a deaths 0

# Set game time
time set 12000
gamerule doDaylightCycle true

# Give instant_health

effect give @a instant_health 5 5

# Clear inventories

clear @a

# Do teleports

tag @e[type=minecraft:armor_stand, x=-150, dx=300, y=70, dy=5, z=-150, dz=300] add available_for_spawn

function wafd:teleport_to_available_armor_stand
function wafd:teleport_to_available_armor_stand
function wafd:teleport_to_available_armor_stand
function wafd:teleport_to_available_armor_stand

function wafd:teleport_to_available_armor_stand
function wafd:teleport_to_available_armor_stand
function wafd:teleport_to_available_armor_stand
function wafd:teleport_to_available_armor_stand

function wafd:teleport_to_available_armor_stand
function wafd:teleport_to_available_armor_stand
function wafd:teleport_to_available_armor_stand
function wafd:teleport_to_available_armor_stand

function wafd:teleport_to_available_armor_stand
function wafd:teleport_to_available_armor_stand
function wafd:teleport_to_available_armor_stand
function wafd:teleport_to_available_armor_stand

tag @e[type=minecraft:armor_stand, x=-150, dx=300, y=70, dy=5, z=-150, dz=300] remove available_for_spawn

execute as @a[scores={isPlaying=1}] run function wafd:give_starting_items

# Refill chests

function wafd:refill_chests

# Exit condition

scoreboard players set game_state game_data 2

scoreboard players set timer game_data -1