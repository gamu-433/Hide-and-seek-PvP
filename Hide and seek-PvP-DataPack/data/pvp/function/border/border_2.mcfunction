scoreboard players set 安地分 pvp_advance 5
scoreboard players set 安地秒 pvp_advance 0
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1
tellraw @a [{"bold":false,"color":"gray","text":"["},{"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"]"},{"bold":true,"color":"green","text":" ボーダーの縮小が止まったようだ..."}]
scoreboard players set 安地状態 pvp_advance 1