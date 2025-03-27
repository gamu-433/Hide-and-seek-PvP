scoreboard players reset @a PvP_deathcount
scoreboard players set 状況 pvp_advance 6
bossbar set minecraft:timer color red
bossbar set minecraft:timer max 1800
bossbar set minecraft:timer players @a
execute as @a[scores={pvp_advance=1}] run attribute @s minecraft:generic.max_health base set 20
execute as @a[scores={pvp_advance=2}] run attribute @s minecraft:generic.max_health base set 30
advancement revoke @a everything
execute in minecraft:pvp run spreadplayers 0 0 20 200 true @a[scores={pvp_advance=2}]
scoreboard players set タイマー pvp_advance 1800
scoreboard players set @a[scores={pvp_advance=1..2}] PvP_Item_ore 100
scoreboard players set 安地状態 pvp_advance 1
recipe take @a *
execute as @a at @s run playsound minecraft:custom.levelup master @s ~ ~ ~ 1 0
title @a title {"text":"PvP Start!!","color":"gold","bold":true}
function pvp:give_item
gamemode survival @a[scores={pvp_advance=1..2}]
execute in minecraft:pvp as @a[team=iron,scores={pvp_advance=1}] run tp @s @a[team=iron,scores={pvp_advance=2},limit=1]
execute in minecraft:pvp as @a[team=copper,scores={pvp_advance=1}] run tp @s @a[team=copper,scores={pvp_advance=2},limit=1]
execute in minecraft:pvp as @a[team=gold,scores={pvp_advance=1}] run tp @s @a[team=gold,scores={pvp_advance=2},limit=1]
execute in minecraft:pvp as @a[team=redstone,scores={pvp_advance=1}] run tp @s @a[team=redstone,scores={pvp_advance=2},limit=1]
execute in minecraft:pvp as @a[team=lapis_lazuli,scores={pvp_advance=1}] run tp @s @a[team=lapis_lazuli,scores={pvp_advance=2},limit=1]
execute in minecraft:pvp as @a[team=emerald,scores={pvp_advance=1}] run tp @s @a[team=emerald,scores={pvp_advance=2},limit=1]
execute in minecraft:pvp as @a[team=diamond,scores={pvp_advance=1}] run tp @s @a[team=diamond,scores={pvp_advance=2},limit=1]
execute in minecraft:pvp as @a[team=spectator] run tp @s @r[scores={pvp_advance=1..2},limit=1]

execute unless entity @a[team=iron] run scoreboard players set 鉄居残り pvp_advance 1
execute unless entity @a[team=copper] run scoreboard players set 銅居残り pvp_advance 1
execute unless entity @a[team=gold] run scoreboard players set 金居残り pvp_advance 1
execute unless entity @a[team=redstone] run scoreboard players set レッドストーン居残り pvp_advance 1
execute unless entity @a[team=emerald] run scoreboard players set エメラルド居残り pvp_advance 1
execute unless entity @a[team=lapis_lazuli] run scoreboard players set ラピスラズリ居残り pvp_advance 1
execute unless entity @a[team=diamond] run scoreboard players set ダイヤモンド居残り pvp_advance 1
