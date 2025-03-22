execute store result score チェスト乱数 pvp_advance run random value 1..6
execute as @a at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 1.2
tellraw @a [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"]"},{"bold":true,"color":"yellow","text":" どこかに物資補給チェストが表れたようだ...!"}]
execute if score チェスト乱数 pvp_advance matches 1 run function pvp:chest/chest_set1
execute if score チェスト乱数 pvp_advance matches 1..2 run function pvp:chest/chest_set2
execute if score チェスト乱数 pvp_advance matches 1..3 run function pvp:chest/chest_set3
execute if score チェスト乱数 pvp_advance matches 1..4 run function pvp:chest/chest_set4
execute if score チェスト乱数 pvp_advance matches 1..5 run function pvp:chest/chest_set5
execute if score チェスト乱数 pvp_advance matches 1..6 run function pvp:chest/chest_set6

