setblock -50 81 46 stone
setblock -50 81 46 chest[facing=south]{Items:[{Slot:13,id:"tipped_arrow",Count:2,tag:{Potion:"minecraft:poison"}}]} replace
setblock -48 80 44 stone
setblock -48 80 44 chest[facing=west]{Items:[{Slot:13,id:"crossbow",Count:1,tag:{Damage:322,Enchantments:[{id:"quick_charge",lvl:3}]}}]} replace
setblock 7 98 68 stone
setblock 7 98 68 chest[facing=west]{Items:[{Slot:13,id:"splash_potion",Count:1,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:28,Duration:100}],display:{Name:'"Splash Potion of Slow Falling"'}}}]} replace
setblock 6 96 54 stone
setblock 6 96 54 chest[facing=north]{Items:[{Slot:13,id:"potion",Count:1,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:5,Duration:100}],display:{Name:'"Potion of Strength"'}}}]} replace
setblock 49 97 47 stone
setblock 49 97 47 chest[facing=north]{Items:[{Slot:13,id:"leather_leggings",Count:1,tag:{Damage:70,Enchantments:[{id:"thorns",lvl:3}]}}]} replace
setblock 41 85 42 stone
setblock 41 85 42 chest[facing=east]{Items:[{Slot:13,id:"netherite_sword",Count:1,tag:{Damage:2031,Enchantments:[{id:"knockback",lvl:2}]}}]} replace
setblock 61 86 0 stone
setblock 61 86 0 chest[facing=east]{Items:[{Slot:13,id:"shield",Count:1,tag:{Damage:304}}]} replace
setblock 64 77 0 stone
setblock 64 77 0 chest[facing=east]{Items:[{Slot:13,id:"bow",Count:1,tag:{Damage:383,Enchantments:[{id:"punch",lvl:1}]}}]} replace
setblock 52 87 -57 stone
setblock 52 87 -57 chest[facing=north]{Items:[{Slot:13,id:"splash_potion",Count:1,tag:{Potion:"minecraft:water",CustomPotionEffects:[{Id:9,Duration:60}],display:{Name:'"Splash Potion of Nausea"'}}}]} replace
setblock 52 88 -57 light_gray_carpet
setblock 37 81 -46 stone
setblock 37 81 -46 chest[facing=east]{Items:[{Slot:13,id:"netherite_boots",Count:1,tag:{Damage:476}}]} replace
setblock 0 90 -75 stone
setblock 0 90 -75 chest[facing=east]{Items:[{Slot:13,id:"tipped_arrow",Count:1,tag:{Potion:"minecraft:strong_turtle_master"}}]} replace
setblock 2 111 -79 stone
setblock 2 111 -79 chest[facing=south]{Items:[{Slot:13,id:"iron_sword",Count:1,tag:{Damage:248,Enchantments:[{id:"knockback",lvl:1}]}}]} replace
setblock -45 88 -46 stone
setblock -45 88 -46 chest[facing=south]{Items:[{Slot:13,id:"snowball",Count:6}]} replace
setblock -60 91 -59 stone
setblock -60 91 -59 chest[facing=east]{Items:[{Slot:13,id:"fishing_rod",Count:1,tag:{Damage:59}}]} replace
setblock -79 91 2 stone
setblock -79 91 2 chest[facing=south]{Items:[{Slot:13,id:"iron_helmet",Count:1,tag:{Damage:158,Enchantments:[{id:"projectile_protection",lvl:4}]}}]} replace
setblock -82 84 3 stone
setblock -82 84 3 chest[facing=west]{Items:[{Slot:13,id:"netherite_axe",Count:1,tag:{Damage:2030}}]} replace

# Lever reset
function wafd:game_setup/lever_reset
