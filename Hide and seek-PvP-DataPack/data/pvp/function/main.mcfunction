#　常時実行ファイル

execute if score 状況 pvp_advance matches 5 run function pvp:advance/adv-5
execute if score 状況 pvp_advance matches 6..14 run function pvp:advance/adv-6_14
execute if score 状況 pvp_advance matches 6..14 run function pvp:advance/boost

# 状況 サドンデス
execute if score 状況 pvp_advance matches 15 run execute as @a at @s run function pvp:sadon

execute if score 状況 pvp_advance matches 6..15 run execute as @a at @s unless entity @s[scores={pvp_advance=1..4}] run function pvp:spectator