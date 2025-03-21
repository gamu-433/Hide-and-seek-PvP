kill @e[tag=chest1_1_1]
kill @e[tag=chest1_1]
kill @e[tag=chest1]
execute in minecraft:pvp run summon armor_stand ~2 ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,ShowArms:1b,Small:0b,Marker:1b,Invisible:1b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["chest1"]}
execute in minecraft:pvp run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:0b,Glowing:1b,ShowArms:1b,Small:0b,Marker:1b,Invisible:0b,NoBasePlate:1b,PersistenceRequired:1b,Tags:["chest1_1"],Pose:{LeftArm:[0f,0f,225f],RightArm:[0f,0f,9f]},ArmorItems:[{id:"minecraft:iron_boots",count:1},{id:"minecraft:iron_leggings",count:1},{id:"minecraft:iron_chestplate",count:1},{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{name:"gamutyan"}}}]}
execute in minecraft:pvp run summon interaction ~ ~ ~ {NoGravity:1b,Silent:1b,Glowing:1b,width:1.1f,height:1.1f,Tags:["chest1_1_1"]}
execute in minecraft:pvp run execute as @e[tag=chest1] run spreadplayers 0 0 10 500 true @s
# execute if score とかでボーダーの状況を確認してTPさせる
execute as @e[tag=chest1] at @s run setblock ~ ~ ~ minecraft:chest[facing=south]
execute as @e[tag=chest1] at @s run tp @e[tag=chest1_1] ~1 ~ ~
execute as @e[tag=chest1] at @s run tp @e[tag=chest1_1_1] ~ ~-0.1 ~