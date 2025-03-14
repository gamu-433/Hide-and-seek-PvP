# 実行前のファイルに追加
# scoreboard players set 鉱石抽選 pvp_kouseki_k1 0

scoreboard objectives add pvp_kouseki_k1 dummy

execute if score 鉱石抽選 pvp_kouseki_k1 matches 0 run function pvp:team/ore_random3

execute if score 鉱石抽選 pvp_kouseki_k1 matches 0 run execute store result score 赤 pvp_advance run random value 1..7
execute if score 鉱石抽選 pvp_kouseki_k1 matches 0 run execute store result score 抽選値 pvp_kouseki_k1 run scoreboard players get 赤 pvp_advance
execute if score 鉱石抽選 pvp_kouseki_k1 matches 0 run execute store result storage minecraft:ore_random random0 int 1 run scoreboard players get 赤 pvp_advance
execute if score 鉱石抽選 pvp_kouseki_k1 matches 0 run scoreboard players set 鉱石抽選 pvp_kouseki_k1 1


execute if score 鉱石抽選 pvp_kouseki_k1 matches 1 run execute store result score 青 pvp_advance run random value 1..7
execute if score 鉱石抽選 pvp_kouseki_k1 matches 1 run execute store result score 抽選値 pvp_kouseki_k1 run scoreboard players get 青 pvp_advance
execute if score 鉱石抽選 pvp_kouseki_k1 matches 1 run execute unless predicate pvp:draft run scoreboard players set 鉱石抽選 pvp_kouseki_k1 100
execute if score 鉱石抽選 pvp_kouseki_k1 matches 100 run execute unless predicate pvp:draft run execute store result storage minecraft:ore_random random1 int 1 run scoreboard players get 青 pvp_advance
execute if score 鉱石抽選 pvp_kouseki_k1 matches 100 run scoreboard players set 鉱石抽選 pvp_kouseki_k1 2
# execute if score 鉱石抽選 pvp_kouseki_k1 matches 1 run execute if predicate pvp:draft run function pvp:team/ore_random


execute if score 鉱石抽選 pvp_kouseki_k1 matches 2 run execute store result score 緑 pvp_advance run random value 1..7
execute if score 鉱石抽選 pvp_kouseki_k1 matches 2 run execute store result score 抽選値 pvp_kouseki_k1 run scoreboard players get 緑 pvp_advance
execute if score 鉱石抽選 pvp_kouseki_k1 matches 2 run execute unless predicate pvp:draft run scoreboard players set 鉱石抽選 pvp_kouseki_k1 100
execute if score 鉱石抽選 pvp_kouseki_k1 matches 100 run execute unless predicate pvp:draft run execute store result storage minecraft:ore_random random2 int 1 run scoreboard players get 緑 pvp_advance
execute if score 鉱石抽選 pvp_kouseki_k1 matches 100 run scoreboard players set 鉱石抽選 pvp_kouseki_k1 3
# execute if score 鉱石抽選 pvp_kouseki_k1 matches 2 run execute if predicate pvp:draft run function pvp:team/ore_random


execute if score 鉱石抽選 pvp_kouseki_k1 matches 3 run execute store result score 黄 pvp_advance run random value 1..7
execute if score 鉱石抽選 pvp_kouseki_k1 matches 3 run execute store result score 抽選値 pvp_kouseki_k1 run scoreboard players get 黄 pvp_advance
execute if score 鉱石抽選 pvp_kouseki_k1 matches 3 run execute unless predicate pvp:draft run scoreboard players set 鉱石抽選 pvp_kouseki_k1 100
execute if score 鉱石抽選 pvp_kouseki_k1 matches 100 run execute unless predicate pvp:draft run execute store result storage minecraft:ore_random random3 int 1 run scoreboard players get 黄 pvp_advance
execute if score 鉱石抽選 pvp_kouseki_k1 matches 100 run scoreboard players set 鉱石抽選 pvp_kouseki_k1 4
# execute if score 鉱石抽選 pvp_kouseki_k1 matches 3 run execute if predicate pvp:draft run function pvp:team/ore_random


execute if score 鉱石抽選 pvp_kouseki_k1 matches 4 run execute store result score 水色 pvp_advance run random value 1..7
execute if score 鉱石抽選 pvp_kouseki_k1 matches 4 run execute store result score 抽選値 pvp_kouseki_k1 run scoreboard players get 水色 pvp_advance
execute if score 鉱石抽選 pvp_kouseki_k1 matches 4 run execute unless predicate pvp:draft run scoreboard players set 鉱石抽選 pvp_kouseki_k1 100
execute if score 鉱石抽選 pvp_kouseki_k1 matches 100 run execute unless predicate pvp:draft run execute store result storage minecraft:ore_random random4 int 1 run scoreboard players get 水色 pvp_advance
execute if score 鉱石抽選 pvp_kouseki_k1 matches 100 run scoreboard players set 鉱石抽選 pvp_kouseki_k1 5
# execute if score 鉱石抽選 pvp_kouseki_k1 matches 4 run execute if predicate pvp:draft run function pvp:team/ore_random


execute if score 鉱石抽選 pvp_kouseki_k1 matches 5 run execute store result score 紫 pvp_advance run random value 1..7
execute if score 鉱石抽選 pvp_kouseki_k1 matches 5 run execute store result score 抽選値 pvp_kouseki_k1 run scoreboard players get 紫 pvp_advance
execute if score 鉱石抽選 pvp_kouseki_k1 matches 5 run execute unless predicate pvp:draft run scoreboard players set 鉱石抽選 pvp_kouseki_k1 100
execute if score 鉱石抽選 pvp_kouseki_k1 matches 100 run execute unless predicate pvp:draft run execute store result storage minecraft:ore_random random5 int 1 run scoreboard players get 紫 pvp_advance
execute if score 鉱石抽選 pvp_kouseki_k1 matches 100 run scoreboard players set 鉱石抽選 pvp_kouseki_k1 6
# execute if score 鉱石抽選 pvp_kouseki_k1 matches 5 run execute if predicate pvp:draft run function pvp:team/ore_random

execute if score 鉱石抽選 pvp_kouseki_k1 matches 6 run execute store result score オレンジ pvp_advance run random value 1..7
execute if score 鉱石抽選 pvp_kouseki_k1 matches 6 run execute store result score 抽選値 pvp_kouseki_k1 run scoreboard players get オレンジ pvp_advance
execute if score 鉱石抽選 pvp_kouseki_k1 matches 6 run execute unless predicate pvp:draft run scoreboard players set 鉱石抽選 pvp_kouseki_k1 100
execute if score 鉱石抽選 pvp_kouseki_k1 matches 100 run execute unless predicate pvp:draft run execute store result storage minecraft:ore_random random6 int 1 run scoreboard players get オレンジ pvp_advance
execute if score 鉱石抽選 pvp_kouseki_k1 matches 100 run scoreboard players set 鉱石抽選 pvp_kouseki_k1 7
execute if score 鉱石抽選 pvp_kouseki_k1 matches 1..6 run execute if predicate pvp:draft run function pvp:team/ore_random
execute if score 鉱石抽選 pvp_kouseki_k1 matches 7 run function pvp:team/ore_random3