# 他でSelectedItemの判定とってokな時だけこれ実行。（各鉱石ごと）
execute as @s at @s if score @s PvP_Item_ore matches 1..100 run execute as @s positioned ^ ^3 ^-3.5 facing entity @s feet run setblock ~ ~-2 ~ minecraft:redstone_ore replace
scoreboard players add @s PvP_Item_ore2 1
execute if score @s PvP_Item_ore2 matches 10.. run scoreboard players remove @s PvP_Item_ore 1
execute if score @s PvP_Item_ore2 matches 10.. run scoreboard players reset @s PvP_Item_ore2