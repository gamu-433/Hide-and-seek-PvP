# 大将前提処理
execute as @a[team=copper] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1.5 1


execute if score @s pvp_advance matches 1 run tellraw @a[team=copper] [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!"},{"bold":false,"color":"gray","text":"] "},{"bold":false,"color":"gold","selector":"@s"},{"bold":true,"color":"yellow","text":"が敵チームの大将をKILLした！"},{"bold":false,"color":"aqua","text":"(+10)"}]
execute if score @s pvp_advance matches 1 run scoreboard players add 銅鉱石 PvP_points 10


# 両方とも大将だった場合の処理
execute if score @s pvp_advance matches 2 run tellraw @a[team=copper] [{"bold":false,"color":"gray","text":"["},{"bold":false,"color":"aqua","text":"!!"},{"bold":false,"color":"gray","text":"] "},{"bold":false,"color":"green","text":"[大将]"},{"bold":false,"color":"gold","selector":"@s"},{"bold":true,"color":"yellow","text":"が敵チームの大将をKILLした！"},{"bold":false,"color":"aqua","text":"(+15)"}]
execute if score @s pvp_advance matches 2 run scoreboard players remove 銅鉱石 PvP_points 15

give @s trial_key[custom_name='{"bold":true,"color":"gold","italic":false,"text":"チェストの鍵"}',lore=['{"bold":false,"color":"white","italic":false,"text":"---------------------------"}','{"bold":true,"color":"aqua","italic":false,"text":"物資補給チェストを開けるための鍵"}','"  "','{"bold":true,"color":"white","italic":false,"text":"【入手方法】"}','{"color":"green","italic":false,"text":"・物資補給チェストから入手する"}','{"color":"green","italic":false,"text":"・プレイヤーをKILLする"}','{"bold":false,"color":"white","italic":false,"text":"---------------------------"}'],custom_model_data=1,enchantment_glint_override=true] 1
tellraw @s [{"text":"チェストの鍵","color":"gold","bold":true},{"text":"を入手した！","color":"white","bold":true}]
advancement revoke @s only pvp:kill/copper_b