scoreboard players reset 内部タイマー pvp_advance

# 状況5 - 戦闘準備開始
execute if score 状況 pvp_advance matches 5 run scoreboard players reset 内部タイマー pvp_advance
execute if score 状況 pvp_advance matches 5 run scoreboard players remove タイマー pvp_advance 1
execute if score 状況 pvp_advance matches 5 if score タイマー pvp_advance matches 4..10 run execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1
execute if score 状況 pvp_advance matches 5 if score タイマー pvp_advance matches 1..3 run execute as @a at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 2
execute if score 状況 pvp_advance matches 5 if score タイマー pvp_advance matches 0 run function pvp:start

# 状況6-9 - 戦闘中
execute if score 状況 pvp_advance matches 6..9 run scoreboard players reset 内部タイマー pvp_advance
execute if score 状況 pvp_advance matches 6..9 run scoreboard players remove タイマー pvp_advance 1