execute as @a[scores={pvp_advance=2},team=iron] store result score 鉄鉱石X PvP_location run data get entity @s Pos[0]
execute as @a[scores={pvp_advance=2},team=iron] store result score 鉄鉱石Y PvP_location run data get entity @s Pos[1]
execute as @a[scores={pvp_advance=2},team=iron] store result score 鉄鉱石Z PvP_location run data get entity @s Pos[2]

execute store result storage minecraft:location_iron x int 1 run scoreboard players get 鉄鉱石X PvP_location
execute store result storage minecraft:location_iron y int 1 run scoreboard players get 鉄鉱石Y PvP_location
execute store result storage minecraft:location_iron z int 1 run scoreboard players get 鉄鉱石Z PvP_location

function pvp:location/iron with storage minecraft:location_iron