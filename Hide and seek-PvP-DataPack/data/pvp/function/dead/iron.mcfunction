execute if score @s pvp_advance matches 1 run tellraw @a[team=iron] [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"red","text":"!"},{"bold":false,"color":"gray","text":"] "},{"bold":false,"color":"gold","selector":"@s"},{"bold":true,"color":"red","text":"が倒された！"},{"bold":false,"color":"red","text":" (-1)"}]
execute if score @s pvp_advance matches 1 run scoreboard players remove 鉄鉱石 PvP_points 1
execute if score @s pvp_advance matches 1 run scoreboard players set @s PvP_effect 300
execute if score @s pvp_advance matches 1 if entity @a[team=iron,scores={pvp_advance=2}] run execute as @a[team=iron] at @s run playsound minecraft:entity.player.big_fall master @s ~ ~ ~ 1 1
execute if score @s pvp_advance matches 1 unless entity @a[team=iron,scores={pvp_advance=2}] run tellraw @a [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"] "},{"bold":true,"color":"white","text":"鉄鉱石チーム"},{"bold":true,"color":"red","text":"から"},{"bold":false,"color":"gold","selector":"@s"},{"bold":true,"color":"red","text":"が脱落した！"}]
execute if score @s pvp_advance matches 1 unless entity @a[team=iron,scores={pvp_advance=2}] run execute unless entity @s[tag=no_clear_item] run clear @s
execute if score @s pvp_advance matches 1 unless entity @a[team=iron,scores={pvp_advance=2}] run execute as @a at @s run playsound minecraft:block.respawn_anchor.deplete master @s ~ ~ ~ 1.5 1.3
execute if score @s pvp_advance matches 1 unless entity @a[team=copper,scores={pvp_advance=2}] run scoreboard players remove 生存 pvp_advance 1
execute if score @s pvp_advance matches 1 unless entity @a[team=iron,scores={pvp_advance=2}] run scoreboard players set @s pvp_advance 3

execute if score @s pvp_advance matches 2 run tellraw @a[team=iron] [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"red","text":"!"},{"bold":false,"color":"gray","text":"] "},{"color":"green","text":"[大将]"},{"bold":false,"color":"gold","selector":"@s"},{"bold":true,"color":"red","text":"が倒された！"},{"bold":false,"color":"red","text":" (-5)"}]
execute if score @s pvp_advance matches 2 run scoreboard players remove 鉄鉱石 PvP_points 5
execute if score @s pvp_advance matches 2 run tellraw @a [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"] "},{"bold":true,"color":"white","text":"鉄鉱石チーム"},{"bold":true,"color":"red","text":"から"},{"color":"green","text":"[大将]"},{"bold":false,"color":"gold","selector":"@s"},{"bold":true,"color":"red","text":" が脱落した！"}]
execute if score @s pvp_advance matches 2 run execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient master @s ~ ~ ~ 1 1
execute if score @s pvp_advance matches 2 run execute unless entity @s[tag=no_clear_item] run clear @s
execute if score @s pvp_advance matches 2 run scoreboard players remove 生存 pvp_advance 1
execute if score @s pvp_advance matches 2 run scoreboard players set @s pvp_advance 3

advancement revoke @s only pvp:dead/iron
function pvp:ranking/main