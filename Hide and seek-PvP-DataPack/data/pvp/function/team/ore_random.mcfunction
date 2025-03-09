execute if score 鉱石抽選 pvp_advance matches 0 run data remove storage ore random
execute if score 鉱石抽選 pvp_advance matches 0 run data merge storage ore {random:[]}

execute store result score 赤 pvp_advance run random value 1..6
execute store result storage minecraft:ore index int 1 run scoreboard players get 赤 pvp_advance
