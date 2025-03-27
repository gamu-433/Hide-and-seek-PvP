scoreboard players set 安地分 pvp_advance 2
scoreboard players set 安地秒 pvp_advance 0
execute in minecraft:pvp run worldborder add -100 120
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1
tellraw @a [{"bold":false,"color":"gray","text":"["},{"color":"red","text":"!"},{"bold":false,"color":"gray","text":"]"},{"bold":true,"color":"red","text":" ボーダーが縮小しています！"}]
execute if score 状況 pvp_advance matches 7 run tellraw @a [{"bold":true,"color":"white","text":"　縮小範囲："},{"bold":false,"color":"aqua","text":"500B"},{"bold":true,"color":"gray","text":"　→→　"},{"bold":false,"color":"green","text":"400B"}]
execute if score 状況 pvp_advance matches 9 run tellraw @a [{"bold":true,"color":"white","text":"　縮小範囲："},{"bold":false,"color":"aqua","text":"400B"},{"bold":true,"color":"gray","text":"　→→　"},{"bold":false,"color":"green","text":"300B"}]
execute if score 状況 pvp_advance matches 11 run tellraw @a [{"bold":true,"color":"white","text":"　縮小範囲："},{"bold":false,"color":"aqua","text":"300B"},{"bold":true,"color":"gray","text":"　→→　"},{"bold":false,"color":"green","text":"200B"}]
execute if score 状況 pvp_advance matches 13 run tellraw @a [{"bold":true,"color":"white","text":"　縮小範囲："},{"bold":false,"color":"aqua","text":"200B"},{"bold":true,"color":"gray","text":"　→→　"},{"bold":false,"color":"green","text":"100B"}]

scoreboard players set 安地状態 pvp_advance 2