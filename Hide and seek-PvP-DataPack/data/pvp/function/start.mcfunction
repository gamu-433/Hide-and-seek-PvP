scoreboard players set 状況 pvp_advance 6
bossbar set minecraft:timer color red
bossbar set minecraft:timer max 1800
bossbar set minecraft:timer players @a
scoreboard players set タイマー pvp_advance 1800
scoreboard players set @a[scores={pvp_advance=1..2}] PvP_Item_ore 100
execute as @a at @s run playsound minecraft:custom.levelup master @s ~ ~ ~ 1 0
title @a title {"text":"PvP Start!!","color":"gold","bold":true}
execute as @a[scores={pvp_advance=1..2}] run function pvp:give_item