execute at @s run kill @e[type=item,distance=..2]
tag @s add glow_use
scoreboard players reset @s PvP_glowitem
tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"yellow","text":"!"},{"bold":false,"color":"gray","text":"]"},{"bold":true,"color":"yellow","text":" 発光石"},{"bold":true,"color":"white","text":"を使用した！"}]
execute as @r[tag=!glow_use] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["ar_glow_use"]}
execute as @e[tag=ar_glow_use] at @s run effect give @a[distance=..2,limit=1] minecraft:glowing 10 1 true
execute as @s at @s run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1.2
execute at @e[tag=ar_glow_use] as @a[distance=..2,limit=1] run tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"yellow","text":"!"},{"bold":false,"color":"gray","text":"]"},{"bold":true,"color":"white","text":" 何者かに"},{"bold":true,"color":"yellow","text":"発光"},{"color":"white","text":"された"}]
execute at @e[tag=ar_glow_use] as @a[distance=..2,limit=1] run playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 0.7
tag @s remove glow_use