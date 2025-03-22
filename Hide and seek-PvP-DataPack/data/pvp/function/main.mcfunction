#　常時実行ファイル

execute if score 状況 pvp_advance matches 5 run function pvp:advance/adv-5
execute if score 状況 pvp_advance matches 6..14 run function pvp:advance/adv-6_8
execute if score 状況 pvp_advance matches 6..14 run function pvp:advance/boost