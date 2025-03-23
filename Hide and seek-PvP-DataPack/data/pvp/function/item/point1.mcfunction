execute as @s if entity @s[team=iron] run tellraw @a[team=iron] [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"] "},{"bold":false,"color":"gold","selector":"@s"},{"bold":true,"color":"white","text":"がポイント券を使用してポイントを獲得した！"},{"bold":false,"color":"aqua","text":"(+1)"}]
execute as @s if entity @s[team=copper] run tellraw @a[team=copper] [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"] "},{"bold":false,"color":"gold","selector":"@s"},{"bold":true,"color":"white","text":"がポイント券を使用してポイントを獲得した！"},{"bold":false,"color":"aqua","text":"(+1)"}]
execute as @s if entity @s[team=gold] run tellraw @a[team=gold] [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"] "},{"bold":false,"color":"gold","selector":"@s"},{"bold":true,"color":"white","text":"がポイント券を使用してポイントを獲得した！"},{"bold":false,"color":"aqua","text":"(+1)"}]
execute as @s if entity @s[team=redstone] run tellraw @a[team=redstone] [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"] "},{"bold":false,"color":"gold","selector":"@s"},{"bold":true,"color":"white","text":"がポイント券を使用してポイントを獲得した！"},{"bold":false,"color":"aqua","text":"(+1)"}]
execute as @s if entity @s[team=emerald] run tellraw @a[team=emerald] [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"] "},{"bold":false,"color":"gold","selector":"@s"},{"bold":true,"color":"white","text":"がポイント券を使用してポイントを獲得した！"},{"bold":false,"color":"aqua","text":"(+1)"}]
execute as @s if entity @s[team=lapis_lazuli] run tellraw @a[team=lapis_lazuli] [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"] "},{"bold":false,"color":"gold","selector":"@s"},{"bold":true,"color":"white","text":"がポイント券を使用してポイントを獲得した！"},{"bold":false,"color":"aqua","text":"(+1)"}]
execute as @s if entity @s[team=diamond] run tellraw @a[team=diamond] [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"] "},{"bold":false,"color":"gold","selector":"@s"},{"bold":true,"color":"white","text":"がポイント券を使用してポイントを獲得した！"},{"bold":false,"color":"aqua","text":"(+1)"}]

execute as @s if entity @s[team=iron] run scoreboard players add 鉄鉱石 PvP_points 1
execute as @s if entity @s[team=copper] run scoreboard players add 銅鉱石 PvP_points 1
execute as @s if entity @s[team=gold] run scoreboard players add 金鉱石 PvP_points 1
execute as @s if entity @s[team=redstone] run scoreboard players add レッドストーン PvP_points 1
execute as @s if entity @s[team=emerald] run scoreboard players add エメラルド PvP_points 1
execute as @s if entity @s[team=lapis_lazuli] run scoreboard players add ラピスラズリ PvP_points 1
execute as @s if entity @s[team=diamond] run scoreboard players add ダイヤモンド PvP_points 1


execute as @s at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1
clear @s paper[custom_data={point:1}] 1
advancement revoke @s only pvp:item/point1