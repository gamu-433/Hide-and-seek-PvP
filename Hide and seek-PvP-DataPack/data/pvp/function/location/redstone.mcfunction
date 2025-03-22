$execute if entity @a[team=redstone,scores={pvp_advance=2}] run tellraw @a [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"]"},{"bold":true,"color":"red","text":" レッドストーン"},{"bold":true,"color":"white","text":"大将"},{"bold":true,"color":"gray","text":" →→ "},{"bold":false,"color":"white","text":"X:"},{"bold":false,"color":"white","text":"$(x)  "},{"bold":false,"color":"white","text":"Y:"},{"bold":false,"color":"white","text":"$(y)  "},{"bold":false,"color":"white","text":"Z:"},{"bold":false,"color":"white","text":"$(z)"}]
execute unless entity @a[team=redstone,scores={pvp_advance=2}] run tellraw @a [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"]"},{"bold":true,"color":"red","text":" レッドストーン"},{"bold":true,"color":"white","text":"大将"},{"bold":true,"color":"gray","text":" →→ "},{"bold":true,"color":"gray","text":"脱落"}]

execute as @a[scores={pvp_advance=2},team=emerald] store result score エメラルドX PvP_location run data get entity @s Pos[0]
execute as @a[scores={pvp_advance=2},team=emerald] store result score エメラルドY PvP_location run data get entity @s Pos[1]
execute as @a[scores={pvp_advance=2},team=emerald] store result score エメラルドZ PvP_location run data get entity @s Pos[2]

execute store result storage minecraft:location_emerald x int 1 run scoreboard players get エメラルドX PvP_location
execute store result storage minecraft:location_emerald y int 1 run scoreboard players get エメラルドY PvP_location
execute store result storage minecraft:location_emerald z int 1 run scoreboard players get エメラルドZ PvP_location

function pvp:location/emerald with storage minecraft:location_emerald