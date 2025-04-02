scoreboard players set @s PvP_40 1
execute as @s at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 0
tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"red","text":"!"},{"bold":false,"color":"gray","text":"] "},{"bold":true,"color":"red","text":"現在あなたはY座標40以下の位置にいるため発光しています！"},{"bold":true,"color":"red","text":"\nY座標30以下まで行くと死亡するので注意してください。"}]