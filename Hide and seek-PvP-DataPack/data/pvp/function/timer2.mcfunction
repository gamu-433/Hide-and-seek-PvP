execute if score 安地状態 pvp_advance matches 1..2 unless score 安地分 pvp_advance matches -1 run scoreboard players set 安地秒 pvp_advance 59
execute if score 安地状態 pvp_advance matches 1..2 unless score 安地分 pvp_advance matches -1 run scoreboard players remove 安地分 pvp_advance 1
execute if score 安地状態 pvp_advance matches 1..2 if score 安地分 pvp_advance matches -1 run scoreboard players add 状況 pvp_advance 1
execute if score 安地状態 pvp_advance matches 1..2 if score 安地分 pvp_advance matches -1 if score 安地状態 pvp_advance matches 1 if score 状況 pvp_advance matches 7..13 run function pvp:border/border_3
execute if score 安地状態 pvp_advance matches 1..2 if score 安地分 pvp_advance matches -1 unless score 安地状態 pvp_advance matches 1 if score 状況 pvp_advance matches 7..13 run function pvp:border/border_1
