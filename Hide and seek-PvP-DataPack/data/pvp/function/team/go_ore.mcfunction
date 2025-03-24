tellraw @a[team=gm] [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"このメッセージはGMのみに送信されています","color":"aqua"}]},"text":"["},{"bold":false,"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"このメッセージはGMのみに送信されています","color":"aqua"}]},"text":"GM"},{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"このメッセージはGMのみに送信されています","color":"aqua"}]},"text":"]　"},{"color":"white","text":"鉱石の抽選を開始しました"}]
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
scoreboard objectives add pvp_kouseki_k1 dummy
scoreboard players set 鉱石抽選 pvp_kouseki_k1 0
function pvp:team/ore_random

execute as @a if entity @s[team=iron] run scoreboard players set @s pvp_advance 1
execute as @a if entity @s[team=copper] run scoreboard players set @s pvp_advance 1
execute as @a if entity @s[team=gold] run scoreboard players set @s pvp_advance 1
execute as @a if entity @s[team=redstone] run scoreboard players set @s pvp_advance 1
execute as @a if entity @s[team=emerald] run scoreboard players set @s pvp_advance 1
execute as @a if entity @s[team=lapis_lazuli] run scoreboard players set @s pvp_advance 1
execute as @a if entity @s[team=diamond] run scoreboard players set @s pvp_advance 1
tellraw @a[scores={pvp_advance=1..2}] {"text":"担当鉱石の抽選を行っています・・・","color":"green","bold":true}

schedule function pvp:team/ore_output 3s replace