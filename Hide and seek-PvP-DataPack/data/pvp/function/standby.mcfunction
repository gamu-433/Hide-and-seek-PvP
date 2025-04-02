scoreboard players set 状況 pvp_advance 5
bossbar set minecraft:timer color green
bossbar set minecraft:timer max 60
bossbar set minecraft:timer players @a
scoreboard players set タイマー pvp_advance 60
scoreboard players set @a[scores={pvp_advance=1..2}] PvP_Item_ore 100
execute as @a at @s run playsound minecraft:custom.levelup master @s ~ ~ ~ 1 1
execute store result score 人数 pvp_advance run tellraw @a[scores={pvp_advance=1..2}] {"text":"1分後にスタートします！","color":"green","bold":true}
scoreboard players operation 生存 pvp_advance = 人数 pvp_advance
scoreboard players set 安地分 pvp_advance 5
scoreboard players set 安地秒 pvp_advance 0
execute as @a[scores={pvp_advance=1}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={pvp_advance=2}] run attribute @s minecraft:generic.max_health base set 30
execute in minecraft:pvp run gamerule keepInventory true
execute in minecraft:pvp run gamerule doMobSpawning false
effect give @a[scores={pvp_advance=1..2}] minecraft:saturation 1200 1 true
effect give @a[scores={pvp_advance=1..2}] minecraft:instant_health 1200 1 true
execute as @a[scores={pvp_advance=1..2}] at @s unless entity @s[tag=no_clear_item] run clear @s
execute if entity @a[team=iron] run scoreboard players add 居残り順位 pvp_advance 1
execute if entity @a[team=copper] run scoreboard players add 居残り順位 pvp_advance 1
execute if entity @a[team=gold] run scoreboard players add 居残り順位 pvp_advance 1
execute if entity @a[team=redstone] run scoreboard players add 居残り順位 pvp_advance 1
execute if entity @a[team=lapis_lazuli] run scoreboard players add 居残り順位 pvp_advance 1
execute if entity @a[team=emerald] run scoreboard players add 居残り順位 pvp_advance 1
execute if entity @a[team=diamond] run scoreboard players add 居残り順位 pvp_advance 1
scoreboard players reset @a death_main
advancement revoke @a everything
execute in minecraft:pvp run forceload add 0 0 0 0
execute in minecraft:pvp run time set day
execute in minecraft:pvp run weather clear

execute as @a at @s unless entity @s[team=iron] unless entity @s[team=gm] unless entity @s[team=copper] unless entity @s[team=gold] unless entity @s[team=redstone] unless entity @s[team=emerald] unless entity @s[team=lapis_lazuli] unless entity @s[team=diamond] run team join spectator @s