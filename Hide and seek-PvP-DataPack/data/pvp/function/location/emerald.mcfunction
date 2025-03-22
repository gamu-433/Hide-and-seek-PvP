$execute if entity @a[team=emerald,scores={pvp_advance=2}] run tellraw @a [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"]"},{"bold":true,"color":"dark_green","text":" エメラルド"},{"bold":true,"color":"white","text":"大将"},{"bold":true,"color":"gray","text":" →→ "},{"bold":false,"color":"white","text":"X:"},{"bold":false,"color":"white","text":"$(x)  "},{"bold":false,"color":"white","text":"Y:"},{"bold":false,"color":"white","text":"$(y)  "},{"bold":false,"color":"white","text":"Z:"},{"bold":false,"color":"white","text":"$(z)"}]
execute unless entity @a[team=emerald,scores={pvp_advance=2}] run tellraw @a [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"]"},{"bold":true,"color":"dark_green","text":" エメラルド"},{"bold":true,"color":"white","text":"大将"},{"bold":true,"color":"gray","text":" →→ "},{"bold":true,"color":"gray","text":"脱落"}]

execute as @a[scores={pvp_advance=2},team=lapis_lazuli] store result score ラピスラズリX PvP_location run data get entity @s Pos[0]
execute as @a[scores={pvp_advance=2},team=lapis_lazuli] store result score ラピスラズリY PvP_location run data get entity @s Pos[1]
execute as @a[scores={pvp_advance=2},team=lapis_lazuli] store result score ラピスラズリZ PvP_location run data get entity @s Pos[2]

execute store result storage minecraft:location_lapis_lazuli x int 1 run scoreboard players get ラピスラズリX PvP_location
execute store result storage minecraft:location_lapis_lazuli y int 1 run scoreboard players get ラピスラズリY PvP_location
execute store result storage minecraft:location_lapis_lazuli z int 1 run scoreboard players get ラピスラズリZ PvP_location

function pvp:location/lapis_lazuli with storage minecraft:location_lapis_lazuli