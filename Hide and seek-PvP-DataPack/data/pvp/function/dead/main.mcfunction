scoreboard players reset @s death_main

execute as @s at @s if entity @s[team=copper] run function pvp:dead/copper
execute as @s at @s if entity @s[team=diamond] run function pvp:dead/diamond
execute as @s at @s if entity @s[team=emerald] run function pvp:dead/emerald
execute as @s at @s if entity @s[team=gold] run function pvp:dead/gold
execute as @s at @s if entity @s[team=iron] run function pvp:dead/iron
execute as @s at @s if entity @s[team=lapis_lazuli] run function pvp:dead/lapis_lazuli
execute as @s at @s if entity @s[team=redstone] run function pvp:dead/redstone