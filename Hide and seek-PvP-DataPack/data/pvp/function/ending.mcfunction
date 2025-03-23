
scoreboard players set 状況 pvp_advance 16
execute as @a at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
bossbar set minecraft:timer visible false
title @a title {"text":"GameEnd","color":"gold","bold":true}

execute unless score 鉄居残り pvp_advance matches 1 run scoreboard players add 鉄鉱石 PvP_points 15
execute unless score 銅居残り pvp_advance matches 1 run scoreboard players add 銅鉱石 PvP_points 15
execute unless score 金居残り pvp_advance matches 1 run scoreboard players add 金鉱石 PvP_points 15
execute unless score レッドストーン居残り pvp_advance matches 1 run scoreboard players add レッドストーン PvP_points 15
execute unless score エメラルド居残り pvp_advance matches 1 run scoreboard players add エメラルド PvP_points 15
execute unless score ラピスラズリ居残り pvp_advance matches 1 run scoreboard players add ラピスラズ PvP_points 15
execute unless score ダイヤモンド居残り pvp_advance matches 1 run scoreboard players add ダイヤモンド PvP_points 15

