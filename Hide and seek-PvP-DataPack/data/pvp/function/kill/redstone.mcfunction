# 通常kill処理
execute as @a[team=redstone] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1

execute if score @s pvp_advance matches 1 run tellraw @a[team=redstone] [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"] "},{"bold":false,"color":"gold","selector":"@s"},{"bold":true,"color":"green","text":"が敵チームのメンバーをKILLした！"},{"bold":false,"color":"aqua","text":"(+1)"}]
execute if score @s pvp_advance matches 1 run scoreboard players add レッドストーン PvP_points 1

give @s trial_key[custom_name='{"bold":true,"color":"gold","italic":false,"text":"チェストの鍵"}',lore=['{"bold":false,"color":"white","italic":false,"text":"---------------------------"}','{"bold":true,"color":"aqua","italic":false,"text":"物資補給チェストを開けるための鍵"}','"  "','{"bold":true,"color":"white","italic":false,"text":"【入手方法】"}','{"color":"green","italic":false,"text":"・物資補給チェストから入手する"}','{"color":"green","italic":false,"text":"・プレイヤーをKILLする"}','{"bold":false,"color":"white","italic":false,"text":"---------------------------"}'],custom_model_data=1,enchantment_glint_override=true] 1
tellraw @s [{"text":"チェストの鍵","color":"gold","bold":true},{"text":"を入手した！","color":"white","bold":true}]

advancement revoke @s only pvp:kill/redstone
scoreboard players add @s PvP_kill 1