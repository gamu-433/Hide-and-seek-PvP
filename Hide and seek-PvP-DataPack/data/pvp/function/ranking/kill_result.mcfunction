# キルランキング表示（修正版）
# 一時的なスコアボードを作成
scoreboard objectives add Ranking dummy

# 計算用の変数を初期化
scoreboard players set #rank Ranking 1
scoreboard players set #displayCount Ranking 0
scoreboard players set #maxRank Ranking 10

# PvP_killのスコアを一時的にコピー
execute as @a run scoreboard players operation @s Ranking = @s PvP_kill

# 1位
scoreboard players set #maxScore Ranking 0
execute as @a if score @s Ranking matches 1.. run scoreboard players operation #maxScore Ranking > @s Ranking
scoreboard players set #sameRank Ranking 0
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players add #sameRank Ranking 1
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run tellraw @a ["",{"text":"1位 ","color":"yellow"},{"text":"==> ","color":"gray"},{"selector":"@s","color":"yellow"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"Ranking"},"color":"aqua"},{"text":"KILL)","color":"aqua"}]
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players set @s Ranking 0
execute if score #maxScore Ranking matches 1.. run scoreboard players operation #rank Ranking += #sameRank Ranking
execute if score #maxScore Ranking matches 1.. run scoreboard players add #displayCount Ranking 1

# 2位
scoreboard players set #maxScore Ranking 0
execute as @a if score @s Ranking matches 1.. run scoreboard players operation #maxScore Ranking > @s Ranking
scoreboard players set #sameRank Ranking 0
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players add #sameRank Ranking 1
execute if score #maxScore Ranking matches 1.. if score #displayCount Ranking < #maxRank Ranking as @a if score @s Ranking = #maxScore Ranking run tellraw @a ["",{"text":"2位 ","color":"aqua"},{"text":"==> ","color":"gray"},{"selector":"@s","color":"aqua"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"Ranking"},"color":"aqua"},{"text":"KILL)","color":"aqua"}]
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players set @s Ranking 0
execute if score #maxScore Ranking matches 1.. run scoreboard players operation #rank Ranking += #sameRank Ranking
execute if score #maxScore Ranking matches 1.. run scoreboard players add #displayCount Ranking 1

# 3位
scoreboard players set #maxScore Ranking 0
execute as @a if score @s Ranking matches 1.. run scoreboard players operation #maxScore Ranking > @s Ranking
scoreboard players set #sameRank Ranking 0
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players add #sameRank Ranking 1
execute if score #maxScore Ranking matches 1.. if score #displayCount Ranking < #maxRank Ranking as @a if score @s Ranking = #maxScore Ranking run tellraw @a ["",{"text":"3位 ","color":"light_purple"},{"text":"==> ","color":"gray"},{"selector":"@s","color":"light_purple"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"Ranking"},"color":"aqua"},{"text":"KILL)","color":"aqua"}]
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players set @s Ranking 0
execute if score #maxScore Ranking matches 1.. run scoreboard players operation #rank Ranking += #sameRank Ranking
execute if score #maxScore Ranking matches 1.. run scoreboard players add #displayCount Ranking 1

# 4位
scoreboard players set #maxScore Ranking 0
execute as @a if score @s Ranking matches 1.. run scoreboard players operation #maxScore Ranking > @s Ranking
scoreboard players set #sameRank Ranking 0
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players add #sameRank Ranking 1
execute if score #maxScore Ranking matches 1.. if score #displayCount Ranking < #maxRank Ranking as @a if score @s Ranking = #maxScore Ranking run tellraw @a ["",{"score":{"name":"#rank","objective":"Ranking"},"color":"white"},{"text":"位 ","color":"white"},{"text":"==> ","color":"gray"},{"selector":"@s","color":"white"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"Ranking"},"color":"aqua"},{"text":"KILL)","color":"aqua"}]
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players set @s Ranking 0
execute if score #maxScore Ranking matches 1.. run scoreboard players operation #rank Ranking += #sameRank Ranking
execute if score #maxScore Ranking matches 1.. run scoreboard players add #displayCount Ranking 1

# 5位
scoreboard players set #maxScore Ranking 0
execute as @a if score @s Ranking matches 1.. run scoreboard players operation #maxScore Ranking > @s Ranking
scoreboard players set #sameRank Ranking 0
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players add #sameRank Ranking 1
execute if score #maxScore Ranking matches 1.. if score #displayCount Ranking < #maxRank Ranking as @a if score @s Ranking = #maxScore Ranking run tellraw @a ["",{"score":{"name":"#rank","objective":"Ranking"},"color":"white"},{"text":"位 ","color":"white"},{"text":"==> ","color":"gray"},{"selector":"@s","color":"white"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"Ranking"},"color":"aqua"},{"text":"KILL)","color":"aqua"}]
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players set @s Ranking 0
execute if score #maxScore Ranking matches 1.. run scoreboard players operation #rank Ranking += #sameRank Ranking
execute if score #maxScore Ranking matches 1.. run scoreboard players add #displayCount Ranking 1

# 6位
scoreboard players set #maxScore Ranking 0
execute as @a if score @s Ranking matches 1.. run scoreboard players operation #maxScore Ranking > @s Ranking
scoreboard players set #sameRank Ranking 0
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players add #sameRank Ranking 1
execute if score #maxScore Ranking matches 1.. if score #displayCount Ranking < #maxRank Ranking as @a if score @s Ranking = #maxScore Ranking run tellraw @a ["",{"score":{"name":"#rank","objective":"Ranking"},"color":"white"},{"text":"位 ","color":"white"},{"text":"==> ","color":"gray"},{"selector":"@s","color":"white"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"Ranking"},"color":"aqua"},{"text":"KILL)","color":"aqua"}]
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players set @s Ranking 0
execute if score #maxScore Ranking matches 1.. run scoreboard players operation #rank Ranking += #sameRank Ranking
execute if score #maxScore Ranking matches 1.. run scoreboard players add #displayCount Ranking 1

# 7位
scoreboard players set #maxScore Ranking 0
execute as @a if score @s Ranking matches 1.. run scoreboard players operation #maxScore Ranking > @s Ranking
scoreboard players set #sameRank Ranking 0
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players add #sameRank Ranking 1
execute if score #maxScore Ranking matches 1.. if score #displayCount Ranking < #maxRank Ranking as @a if score @s Ranking = #maxScore Ranking run tellraw @a ["",{"score":{"name":"#rank","objective":"Ranking"},"color":"white"},{"text":"位 ","color":"white"},{"text":"==> ","color":"gray"},{"selector":"@s","color":"white"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"Ranking"},"color":"aqua"},{"text":"KILL)","color":"aqua"}]
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players set @s Ranking 0
execute if score #maxScore Ranking matches 1.. run scoreboard players operation #rank Ranking += #sameRank Ranking
execute if score #maxScore Ranking matches 1.. run scoreboard players add #displayCount Ranking 1

# 8位
scoreboard players set #maxScore Ranking 0
execute as @a if score @s Ranking matches 1.. run scoreboard players operation #maxScore Ranking > @s Ranking
scoreboard players set #sameRank Ranking 0
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players add #sameRank Ranking 1
execute if score #maxScore Ranking matches 1.. if score #displayCount Ranking < #maxRank Ranking as @a if score @s Ranking = #maxScore Ranking run tellraw @a ["",{"score":{"name":"#rank","objective":"Ranking"},"color":"white"},{"text":"位 ","color":"white"},{"text":"==> ","color":"gray"},{"selector":"@s","color":"white"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"Ranking"},"color":"aqua"},{"text":"KILL)","color":"aqua"}]
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players set @s Ranking 0
execute if score #maxScore Ranking matches 1.. run scoreboard players operation #rank Ranking += #sameRank Ranking
execute if score #maxScore Ranking matches 1.. run scoreboard players add #displayCount Ranking 1

# 9位
scoreboard players set #maxScore Ranking 0
execute as @a if score @s Ranking matches 1.. run scoreboard players operation #maxScore Ranking > @s Ranking
scoreboard players set #sameRank Ranking 0
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players add #sameRank Ranking 1
execute if score #maxScore Ranking matches 1.. if score #displayCount Ranking < #maxRank Ranking as @a if score @s Ranking = #maxScore Ranking run tellraw @a ["",{"score":{"name":"#rank","objective":"Ranking"},"color":"white"},{"text":"位 ","color":"white"},{"text":"==> ","color":"gray"},{"selector":"@s","color":"white"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"Ranking"},"color":"aqua"},{"text":"KILL)","color":"aqua"}]
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players set @s Ranking 0
execute if score #maxScore Ranking matches 1.. run scoreboard players operation #rank Ranking += #sameRank Ranking
execute if score #maxScore Ranking matches 1.. run scoreboard players add #displayCount Ranking 1

# 10位
scoreboard players set #maxScore Ranking 0
execute as @a if score @s Ranking matches 1.. run scoreboard players operation #maxScore Ranking > @s Ranking
scoreboard players set #sameRank Ranking 0
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players add #sameRank Ranking 1
execute if score #maxScore Ranking matches 1.. if score #displayCount Ranking < #maxRank Ranking as @a if score @s Ranking = #maxScore Ranking run tellraw @a ["",{"score":{"name":"#rank","objective":"Ranking"},"color":"white"},{"text":"位 ","color":"white"},{"text":"==> ","color":"gray"},{"selector":"@s","color":"white"},{"text":" (","color":"aqua"},{"score":{"name":"@s","objective":"Ranking"},"color":"aqua"},{"text":"KILL)","color":"aqua"}]
execute if score #maxScore Ranking matches 1.. as @a if score @s Ranking = #maxScore Ranking run scoreboard players set @s Ranking 0

# 後片付け（一時スコアボードを削除）
scoreboard objectives remove Ranking