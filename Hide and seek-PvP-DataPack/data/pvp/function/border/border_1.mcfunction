# border
# start直後は状況7で送信されてくる-8回の繰り返し


execute if score 安地状態 pvp_advance matches 2 if score 状況 pvp_advance matches 14 run scoreboard players set 安地状態 pvp_advance 3
execute if score 安地状態 pvp_advance matches 2 if score 状況 pvp_advance matches 14 run scoreboard players set 安地秒 pvp_advance 0
execute if score 安地状態 pvp_advance matches 2 if score 状況 pvp_advance matches 14 run scoreboard players set 安地分 pvp_advance 0

execute if score 安地状態 pvp_advance matches 2 if score 状況 pvp_advance matches 7..13 run function pvp:border/border_2



