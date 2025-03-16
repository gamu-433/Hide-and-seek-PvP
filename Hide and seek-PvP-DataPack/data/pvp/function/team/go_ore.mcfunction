tellraw @a[team=gm] [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"このメッセージはGMのみに送信されています","color":"aqua"}]},"text":"["},{"bold":false,"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"このメッセージはGMのみに送信されています","color":"aqua"}]},"text":"GM"},{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"このメッセージはGMのみに送信されています","color":"aqua"}]},"text":"]　"},{"color":"white","text":"鉱石の抽選を開始しました"}]execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
scoreboard objectives add pvp_kouseki_k1 dummy
tellraw @a {"text":"担当鉱石の抽選を行っています・・・","color":"green","bold":true}
scoreboard players set 鉱石抽選 pvp_kouseki_k1 0
function pvp:team/ore_random
schedule function pvp:team/ore_output 3s replace