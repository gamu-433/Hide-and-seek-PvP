execute at @s run kill @e[type=item,distance=..2]
tag @s add omen_use
scoreboard players reset @s PvP_omen
tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"yellow","text":"!"},{"bold":false,"color":"gray","text":"]"},{"bold":true,"color":"gray","text":" 盲目弾"},{"bold":true,"color":"white","text":"を使用した！"}]
execute as @s at @s run effect give @a[tag=!omen_use,distance=..3] minecraft:blindness 6 1 true
execute at @s as @a[tag=!omen_use,distance=..3] run tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"yellow","text":"!"},{"bold":false,"color":"gray","text":"]"},{"bold":true,"color":"gray","text":" 盲目弾"},{"bold":true,"color":"white","text":"にあたってしまった！"}]
execute at @s as @a[distance=..3] run execute as @s at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 1.5
tag @s remove omen_use