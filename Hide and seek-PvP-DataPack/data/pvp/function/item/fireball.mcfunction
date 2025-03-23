execute at @s run kill @e[type=item,distance=..2]
scoreboard players reset @s PvP_fireball
execute as @s at @s run playsound minecraft:entity.ghast.shoot master @s ~ ~ ~ 1 1
execute as @s at @s positioned 0.0 0.0 0.0 run summon minecraft:area_effect_cloud ^ ^ ^0.5 {Tags:["fire"],Duration:2}
execute as @s at @s run summon minecraft:fireball ^ ^1.4 ^1 {Tags:["fireball"],PortalCooldown:2}
execute as @e[tag=fireball,nbt={PortalCooldown:2}] store result entity @s Motion[0] double 0.0001 run data get entity @e[limit=1,tag=fire] Pos[0] 10000
execute as @e[tag=fireball,nbt={PortalCooldown:2}] store result entity @s Motion[1] double 0.0001 run data get entity @e[limit=1,tag=fire] Pos[1] 10000
execute as @e[tag=fireball,nbt={PortalCooldown:2}] store result entity @s Motion[2] double 0.0001 run data get entity @e[limit=1,tag=fire] Pos[2] 10000
