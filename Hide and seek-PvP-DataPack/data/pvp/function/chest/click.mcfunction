execute unless predicate pvp:chest_open run execute as @s at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless predicate pvp:chest_open run tellraw @s [{"bold":false,"color":"gray","text":"["},{"color":"red","text":"!"},"] ",{"bold":true,"color":"gold","text":"チェストの鍵"},{"bold":true,"color":"red","text":" を持っていないためチェストを開けられません！"}]
execute if predicate pvp:chest_open run execute as @s at @s run kill @e[type=minecraft:interaction,limit=1,sort=nearest,distance=..5]
execute if predicate pvp:chest_open run kill @e[type=minecraft:armor_stand,limit=2,sort=nearest,distance=..5]
execute if predicate pvp:chest_open run execute as @s at @s run playsound minecraft:custom.levelup master @s ~ ~ ~ 1 0.8
execute if predicate pvp:chest_open run tellraw @s [{"bold":false,"color":"gray","text":"["},{"color":"aqua","text":"!"},"] ",{"bold":true,"color":"gold","text":"チェストの鍵"},{"bold":true,"color":"green","text":" を消費してチェストの鍵を開けた！"}]
execute if predicate pvp:chest_open run tellraw @a [{"bold":false,"color":"gray","text":"["},{"color":"aqua","text":"!"},"] ",{"bold":false,"color":"gold","selector":"@s"},{"bold":true,"color":"green","text":" が物資補給チェストの鍵を開けた！"}]
execute if predicate pvp:chest_open run clear @s minecraft:trial_key[minecraft:custom_model_data=1] 1
advancement revoke @s from pvp:int_click