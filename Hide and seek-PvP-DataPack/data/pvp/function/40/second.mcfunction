scoreboard players set @s PvP_40 0
execute as @s at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"] "},{"bold":true,"color":"white","text":"Y座標40以下の地点から脱出しました。発光が解除されます。"}]