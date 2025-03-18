# 普通に常時実行で回復する
execute as @a[team=diamond] at @s if block ~ ~-1 ~ minecraft:diamond_ore run scoreboard players add @s PvP_Item_ore3 1
execute as @a[scores={pvp_advance=1}] if score @s PvP_Item_ore3 matches 20.. if score @s PvP_Item_ore matches ..99 run scoreboard players add @s PvP_Item_ore 1
execute if score @s PvP_Item_ore3 matches 20.. run scoreboard players reset @s PvP_Item_ore3