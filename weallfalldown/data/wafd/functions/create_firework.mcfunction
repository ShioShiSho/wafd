execute as @s run summon firework_rocket ~ ~ ~ {LifeTime:15,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:1,Trail:1,Colors:[I;11743532,3887386],FadeColors:[I;1973019,11743532]}]}}}}

teleport @e[type=firework_rocket] @e[type=armor_stand, sort=nearest, limit=1]

teleport @e[type=firework_rocket] ~ ~30 ~