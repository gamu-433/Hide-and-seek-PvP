scoreboard players reset 内部タイマー pvp_advance
execute if score 状況 pvp_advance matches 4 run scoreboard players reset 内部タイマー pvp_advance
execute if score 状況 pvp_advance matches 4 run scoreboard players remove タイマー pvp_advance 1
# 状況4のタイマーの10秒前ぐらいから価値カチオンを鳴らすように追加
# 0になったときの次のfuncton処理も追加