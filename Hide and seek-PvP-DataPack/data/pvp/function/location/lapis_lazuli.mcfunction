$execute if entity @a[team=lapis_lazuli,scores={pvp_advance=2}] run tellraw @a [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"]"},{"bold":true,"color":"blue","text":" ラピスラズリ"},{"bold":true,"color":"white","text":"大将"},{"bold":true,"color":"gray","text":" →→ "},{"bold":false,"color":"white","text":"X:"},{"bold":false,"color":"white","text":"$(x)  "},{"bold":false,"color":"white","text":"Y:"},{"bold":false,"color":"white","text":"$(y)  "},{"bold":false,"color":"white","text":"Z:"},{"bold":false,"color":"white","text":"$(z)"}]
execute unless entity @a[team=lapis_lazuli,scores={pvp_advance=2}] run tellraw @a [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"]"},{"bold":true,"color":"blue","text":" ラピスラズリ"},{"bold":true,"color":"white","text":"大将"},{"bold":true,"color":"gray","text":" →→ "},{"bold":true,"color":"gray","text":"脱落"}]

execute as @a[scores={pvp_advance=2},team=diamond] store result score ダイヤモンドX PvP_location run data get entity @s Pos[0]
execute as @a[scores={pvp_advance=2},team=diamond] store result score ダイヤモンドY PvP_location run data get entity @s Pos[1]
execute as @a[scores={pvp_advance=2},team=diamond] store result score ダイヤモンドZ PvP_location run data get entity @s Pos[2]

execute store result storage minecraft:location_diamond x int 1 run scoreboard players get ダイヤモンドX PvP_location
execute store result storage minecraft:location_diamond y int 1 run scoreboard players get ダイヤモンドY PvP_location
execute store result storage minecraft:location_diamond z int 1 run scoreboard players get ダイヤモンドZ PvP_location

function pvp:location/diamond with storage minecraft:location_diamond