# 他でSelectedItemの判定とってokな時だけこれ実行。（各鉱石ごと）
execute as @a at @s if score @s PvP_Item_ore matches 1..100 run fill ~ ~1 ~2 ~ ~1 ~3 minecraft:copper_ore
scoreboard players add @s PvP_Item_ore2 1
execute if score @s PvP_Item_ore2 matches 10.. run scoreboard players remove @s PvP_Item_ore 1
execute if score @s PvP_Item_ore2 matches 10.. run scoreboard players reset @s PvP_Item_ore2