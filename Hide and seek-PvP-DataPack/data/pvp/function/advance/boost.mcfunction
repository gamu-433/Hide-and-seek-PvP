execute as @e[type=minecraft:arrow] at @s on origin if entity @s[team=iron] rotated as @p run fill ~2 ~ ~2 ~4 ~ ~4 minecraft:iron_ore
execute as @e[type=minecraft:arrow] at @s on origin if entity @s[team=copper] rotated as @p run fill ~2 ~ ~2 ~4 ~ ~4 minecraft:copper_ore
execute as @e[type=minecraft:arrow] at @s on origin if entity @s[team=gold] rotated as @p run fill ~2 ~ ~2 ~4 ~ ~4 minecraft:gold_ore
execute as @e[type=minecraft:arrow] at @s on origin if entity @s[team=lapis_lazuli] rotated as @p run fill ~2 ~ ~2 ~4 ~ ~4 minecraft:lapis_ore
execute as @e[type=minecraft:arrow] at @s on origin if entity @s[team=redstone] rotated as @p run fill ~2 ~ ~2 ~4 ~ ~4 minecraft:redstone_ore
execute as @e[type=minecraft:arrow] at @s on origin if entity @s[team=emerald] rotated as @p run fill ~2 ~ ~2 ~4 ~ ~4 minecraft:emerald_ore
execute as @e[type=minecraft:arrow] at @s on origin if entity @s[team=diamond] rotated as @p run fill ~2 ~ ~2 ~4 ~ ~4 minecraft:diamond_ore
execute as @e[type=minecraft:snowball] at @s on origin if entity @s[team=iron] rotated as @p run function pvp:boost/iron
execute as @e[type=minecraft:snowball] at @s on origin if entity @s[team=copper] rotated as @p run function pvp:boost/copper
execute as @e[type=minecraft:snowball] at @s on origin if entity @s[team=gold] rotated as @p run function pvp:boost/gold
execute as @e[type=minecraft:snowball] at @s on origin if entity @s[team=lapis_lazuli] rotated as @p run function pvp:boost/lapis_lazuli
execute as @e[type=minecraft:snowball] at @s on origin if entity @s[team=redstone] rotated as @p run function pvp:boost/redstone
execute as @e[type=minecraft:snowball] at @s on origin if entity @s[team=emerald] rotated as @p run function pvp:boost/emerald
execute as @e[type=minecraft:snowball] at @s on origin if entity @s[team=diamond] rotated as @p run function pvp:boost/diamond
execute as @a[team=iron] at @s if block ~ ~-1 ~ minecraft:iron_ore run function pvp:boost/effect
execute as @a[team=copper] at @s if block ~ ~-1 ~ minecraft:copper_ore run function pvp:boost/effect
execute as @a[team=gold] at @s if block ~ ~-1 ~ minecraft:gold_ore run function pvp:boost/effect
execute as @a[team=lapis_lazuli] at @s if block ~ ~-1 ~ minecraft:lapis_ore run function pvp:boost/effect
execute as @a[team=redstone] at @s if block ~ ~-1 ~ minecraft:redstone_ore run function pvp:boost/effect
execute as @a[team=emerald] at @s if block ~ ~-1 ~ minecraft:emerald_ore run function pvp:boost/effect
execute as @a[team=diamond] at @s if block ~ ~-1 ~ minecraft:diamond_ore run function pvp:boost/effect
execute as @a[team=copper] at @s unless block ~ ~-1 ~ minecraft:copper_ore run effect clear @s minecraft:invisibility
execute as @a[scores={pvp_advance=1..2}] at @s unless block ~ ~-1 ~ minecraft:iron_ore unless block ~ ~-1 ~ minecraft:copper_ore unless block ~ ~-1 ~ minecraft:gold_ore unless block ~ ~-1 ~ minecraft:redstone_ore unless block ~ ~-1 ~ minecraft:lapis_ore unless block ~ ~-1 ~ minecraft:emerald_ore unless block ~ ~-1 ~ minecraft:diamond_ore run effect clear @s minecraft:invisibility