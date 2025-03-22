$execute if entity @a[team=gold,scores={pvp_advance=2}] run tellraw @a [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"]"},{"bold":true,"color":"yellow","text":" 金鉱石"},{"bold":true,"color":"white","text":"大将"},{"bold":true,"color":"gray","text":" →→ "},{"bold":false,"color":"white","text":"X:"},{"bold":false,"color":"white","text":"$(x)  "},{"bold":false,"color":"white","text":"Y:"},{"bold":false,"color":"white","text":"$(y)  "},{"bold":false,"color":"white","text":"Z:"},{"bold":false,"color":"white","text":"$(z)"}]
execute unless entity @a[team=gold,scores={pvp_advance=2}] run tellraw @a [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"]"},{"bold":true,"color":"yellow","text":" 金鉱石"},{"bold":true,"color":"white","text":"大将"},{"bold":true,"color":"gray","text":" →→ "},{"bold":true,"color":"gray","text":"脱落"}]

execute as @a[scores={pvp_advance=2},team=redstone] store result score レッドストーンX PvP_location run data get entity @s Pos[0]
execute as @a[scores={pvp_advance=2},team=redstone] store result score レッドストーンY PvP_location run data get entity @s Pos[1]
execute as @a[scores={pvp_advance=2},team=redstone] store result score レッドストーンZ PvP_location run data get entity @s Pos[2]

execute store result storage minecraft:location_redstone x int 1 run scoreboard players get レッドストーンX PvP_location
execute store result storage minecraft:location_redstone y int 1 run scoreboard players get レッドストーンY PvP_location
execute store result storage minecraft:location_redstone z int 1 run scoreboard players get レッドストーンZ PvP_location

function pvp:location/redstone with storage minecraft:location_redstone