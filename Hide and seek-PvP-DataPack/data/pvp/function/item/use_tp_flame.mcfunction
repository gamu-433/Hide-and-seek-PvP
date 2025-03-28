##tpフレームの本体
summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["tp_flame"],CustomName:'""'}
scoreboard players set @s tpflame_id 1
execute as @s at @s run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace minecraft:end_portal_frame

##使用者のtpflame_id = その座標の防具立てのtpflame_id
scoreboard players operation @e[type=armor_stand,tag=tp_flame,sort=nearest,limit=1] tpflame_id = @s tpflame_id

##対象者も決める
scoreboard players set @a[sort=random,limit=1,type=!armor_stand] tpflame_id 2
execute as @a[scores={tpflame_id=2},type=!armor_stand] at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["tp_flame"],CustomName:'""'}
execute as @a[scores={tpflame_id=2},type=!armor_stand] at @s run scoreboard players operation @e[type=armor_stand,tag=tp_flame,sort=nearest,limit=1] tpflame_id = @s tpflame_id


##tpさせる
tp @a[type=!armor_stand,scores={tpflame_id=1}] @a[type=armor_stand,scores={tpflame_id=2},sort=nearest,limit=1]
tp @a[type=!armor_stand,scores={tpflame_id=2}] @a[type=armor_stand,scores={tpflame_id=1},sort=nearest,limit=1]

##演出
execute as @e[type=armor_stand,tag=tp_flame] at @s run particle minecraft:portal ~ ~ ~ 1 1 1 0 30 force
execute as @e[type=armor_stand,tag=tp_flame] at @s run playsound minecraft:entity.enderman.teleport master @a[distance=..5] ~ ~ ~ 1 1

tellraw @p [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"yellow","text":"!"},{"color":"gray","text":"]"},{"bold":false,"color":"white","text":" あなたは"},{"bold":false,"color":"white","selector":"@e[type=!armor_stand,scores={tpflame_id=2}]"},{"bold":false,"color":"white","text":"と入れ替わった！"}]
advancement revoke @s only pvp:item/tp_flame

#かたづけ
kill @e[type=armor_stand,tag=tp_flame]
scoreboard players reset * tpflame_id