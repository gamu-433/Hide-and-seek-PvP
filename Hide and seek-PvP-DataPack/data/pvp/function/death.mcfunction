 spreadplayers 0 0 10 110 true @s
execute if score 状況 pvp_advance matches 6..7 run execute in minecraft:pvp run execute as @s[scores={PvP_death_time=1..2}] run spreadplayers 0 0 10 250 true @s
execute if score 状況 pvp_advance matches 8..9 run execute in minecraft:pvp run execute as @s[scores={PvP_death_time=1..2}] run spreadplayers 0 0 10 200 true @s
execute if score 状況 pvp_advance matches 10..11 run execute in minecraft:pvp run execute as @s[scores={PvP_death_time=1..2}] run spreadplayers 0 0 10 150 true @s
execute if score 状況 pvp_advance matches 12..13 run execute in minecraft:pvp run execute as @s[scores={PvP_death_time=1..2}] run spreadplayers 0 0 10 100 true @s
execute if score 状況 pvp_advance matches 14..15 run execute in minecraft:pvp run execute as @s[scores={PvP_death_time=1..2}] run spreadplayers 0 0 10 50 true @s

execute as @s if entity @s[scores={PvP_death_time=2..}] run scoreboard players reset @s PvP_deathcount