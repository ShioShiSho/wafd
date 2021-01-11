# Check for deaths

execute as @a[scores={deaths=1}] at @s run function wafd:game_loop/on_death

# Check for victory

execute if score players_remaining game_data matches ..1 run function wafd:game_loop/on_victory
