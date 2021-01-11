# Set worldborder

worldborder set 300

# Set players isPlaying to 1 for participants

function wafd:game_setup/set_isplaying

# Set difficulty

difficulty normal

# Set deaths to 0 for all players

scoreboard players set @a deaths 0

# Set game time
time set 11000
gamerule doDaylightCycle true

# Reset leave_game, reset combat_log tag, reset warned tag

scoreboard players reset @a leave_game
tag @a remove combat_log

tag @a remove player_warned

# Clear all effects

effect clear @a

# Clear items

kill @e[type=item]

# Clear inventories

clear @a

# Do teleports

tag @e[type=minecraft:armor_stand] remove available_for_spawn

tag @e[type=minecraft:armor_stand, x=-150, dx=300, y=70, dy=5, z=-150, dz=300] add available_for_spawn

function wafd:game_setup/teleport_to_available_armor_stand
function wafd:game_setup/teleport_to_available_armor_stand
function wafd:game_setup/teleport_to_available_armor_stand
function wafd:game_setup/teleport_to_available_armor_stand

function wafd:game_setup/teleport_to_available_armor_stand
function wafd:game_setup/teleport_to_available_armor_stand
function wafd:game_setup/teleport_to_available_armor_stand
function wafd:game_setup/teleport_to_available_armor_stand

function wafd:game_setup/teleport_to_available_armor_stand
function wafd:game_setup/teleport_to_available_armor_stand
function wafd:game_setup/teleport_to_available_armor_stand
function wafd:game_setup/teleport_to_available_armor_stand

function wafd:game_setup/teleport_to_available_armor_stand
function wafd:game_setup/teleport_to_available_armor_stand
function wafd:game_setup/teleport_to_available_armor_stand
function wafd:game_setup/teleport_to_available_armor_stand


tag @e[type=minecraft:armor_stand] remove available_for_spawn

# Give starting items

execute as @a[scores={isPlaying=1}] run function wafd:game_setup/give_starting_items

# Refill chests

function wafd:game_setup/refill_chests

# Untag all armour stands, tag island armour stands

function wafd:game_loop/untag_all_armor_stands
function wafd:game_loop/tag_island_armor_stands

# Exit condition

scoreboard players set game_state game_data 2

scoreboard players set timer game_data -1