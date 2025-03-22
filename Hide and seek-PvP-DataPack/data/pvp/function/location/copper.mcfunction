$execute if entity @a[team=copper,scores={pvp_advance=2}] run tellraw @a [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"]"},{"bold":true,"color":"gold","text":" 銅鉱石"},{"bold":true,"color":"white","text":"大将"},{"bold":true,"color":"gray","text":" →→ "},{"bold":false,"color":"white","text":"X:"},{"bold":false,"color":"white","text":"$(x)  "},{"bold":false,"color":"white","text":"Y:"},{"bold":false,"color":"white","text":"$(y)  "},{"bold":false,"color":"white","text":"Z:"},{"bold":false,"color":"white","text":"$(z)"}]
execute unless entity @a[team=copper,scores={pvp_advance=2}] run tellraw @a [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"]"},{"bold":true,"color":"gold","text":" 銅鉱石"},{"bold":true,"color":"white","text":"大将"},{"bold":true,"color":"gray","text":" →→ "},{"bold":true,"color":"gray","text":"脱落"}]

execute as @a[scores={pvp_advance=2},team=gold] store result score 金鉱石X PvP_location run data get entity @s Pos[0]
execute as @a[scores={pvp_advance=2},team=gold] store result score 金鉱石Y PvP_location run data get entity @s Pos[1]
execute as @a[scores={pvp_advance=2},team=gold] store result score 金鉱石Z PvP_location run data get entity @s Pos[2]

execute store result storage minecraft:location_gold x int 1 run scoreboard players get 金鉱石X PvP_location
execute store result storage minecraft:location_gold y int 1 run scoreboard players get 金鉱石Y PvP_location
execute store result storage minecraft:location_gold z int 1 run scoreboard players get 金鉱石Z PvP_location

function pvp:location/gold with storage minecraft:location_gold