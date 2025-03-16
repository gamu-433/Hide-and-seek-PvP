bossbar set minecraft:timer name [{"bold":true,"color":"green","text":"まもなくPvPスタート！"},{"bold":true,"color":"yellow","text":"　戦闘開始まであと"},{"bold":true,"color":"gray","text":":"},{"bold":false,"color":"aqua","score":{"name":"タイマー","objective":"pvp_advance"}}]
bossbar set minecraft:timer players @a
scoreboard players add 内部タイマー pvp_advance 1
execute store result bossbar minecraft:timer value run scoreboard players get タイマー pvp_advance
execute if score 内部タイマー pvp_advance matches 20.. run function pvp:timer