#execute if score match ◯ でそれぞれtellrawを追加
scoreboard objectives remove pvp_kouseki_k1
# ここに変わりにそれぞれのteam範囲とって自分のチーム通知 / そしてそのチームへの参加処理
# execute as @a[team=red] store result score @s pvp_ore_team run scoreboard players get 赤 pvp_advance
# execute as @a[team=blue] store result score @s pvp_ore_team run scoreboard players get 青 pvp_advance
# execute as @a[team=yellow] store result score @s pvp_ore_team run scoreboard players get 黄 pvp_advance
# execute as @a[team=purple] store result score @s pvp_ore_team run scoreboard players get 紫 pvp_advance
# execute as @a[team=green] store result score @s pvp_ore_team run scoreboard players get 緑 pvp_advance
# execute as @a[team=aqua] store result score @s pvp_ore_team run scoreboard players get 水色 pvp_advance
# execute as @a[team=gold] store result score @s pvp_ore_team run scoreboard players get オレンジ pvp_advance

tellraw @a [{"bold":true,"color":"white","text":"============= "},{"bold":true,"color":"green","text":"所属チームが決定しました"},{"bold":true,"color":"white","text":" ============="}]
execute as @a at @s run playsound minecraft:custom.levelup master @s ~ ~ ~ 1 1

tellraw @a [{"bold":true,"color":"white","text":"鉄鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=iron]"}]
tellraw @a [{"bold":true,"color":"gold","text":"銅鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=copper]"}]
tellraw @a [{"bold":true,"color":"yellow","text":"金鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=gold]"}]
tellraw @a [{"bold":true,"color":"red","text":"レッドストーン"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"→→→　"},{"bold":false,"color":"white","selector":"@a[team=redstone]"}]
tellraw @a [{"bold":true,"color":"dark_green","text":"エメラルド"},{"bold":true,"color":"white","text":"　チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=emerald]"}]
tellraw @a [{"bold":true,"color":"blue","text":"ラピスラズリ"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=lapis_lazuli]"}]
tellraw @a [{"bold":true,"color":"aqua","text":"ダイヤモンド"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=diamond]"}]

# execute if score 赤 pvp_advance matches 1 run tellraw @a [{"bold":true,"color":"white","text":"鉄鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=iron]"}]
# execute if score 赤 pvp_advance matches 2 run tellraw @a [{"bold":true,"color":"gold","text":"銅鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=copper]"}]
# execute if score 赤 pvp_advance matches 3 run tellraw @a [{"bold":true,"color":"yellow","text":"金鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=gold]"}]
# execute if score 赤 pvp_advance matches 4 run 場所決まり次第teamに追加するコマンドに変更
# execute if score 赤 pvp_advance matches 5 run tellraw @a [{"bold":true,"color":"red","text":"赤"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":true,"color":"dark_green","text":"エメラルド鉱石"}]
# execute if score 赤 pvp_advance matches 6 run tellraw @a [{"bold":true,"color":"blue","text":"ラピスラズリ鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=lapis_lazuli]"}]
# execute if score 赤 pvp_advance matches 7 run tellraw @a [{"bold":true,"color":"red","text":"赤"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":true,"color":"aqua","text":"ダイヤモンド鉱石"}]

# execute if score 青 pvp_advance matches 1 run tellraw @a [{"bold":true,"color":"white","text":"鉄鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=iron]"}]
# execute if score 青 pvp_advance matches 2 run tellraw @a [{"bold":true,"color":"gold","text":"銅鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=copper]"}]
# execute if score 青 pvp_advance matches 3 run tellraw @a [{"bold":true,"color":"yellow","text":"金鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=gold]"}]
# execute if score 青 pvp_advance matches 4 run tellraw @a [{"bold":true,"color":"red","text":"レッドストーン鉱石"},{"bold":true,"color":"white","text":" チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=redstone]"}]
# execute if score 青 pvp_advance matches 5 run tellraw @a [{"bold":true,"color":"blue","text":"青"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":true,"color":"dark_green","text":"エメラルド鉱石"}]
# execute if score 青 pvp_advance matches 6 run tellraw @a [{"bold":true,"color":"blue","text":"ラピスラズリ鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=lapis_lazuli]"}]
# execute if score 青 pvp_advance matches 7 run tellraw @a [{"bold":true,"color":"blue","text":"青"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":true,"color":"aqua","text":"ダイヤモンド鉱石"}]

# execute if score 黄 pvp_advance matches 1 run tellraw @a [{"bold":true,"color":"white","text":"鉄鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=iron]"}]
# execute if score 黄 pvp_advance matches 2 run tellraw @a [{"bold":true,"color":"gold","text":"銅鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=copper]"}]
# execute if score 黄 pvp_advance matches 3 run tellraw @a [{"bold":true,"color":"yellow","text":"金鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=gold]"}]
# execute if score 黄 pvp_advance matches 4 run tellraw @a [{"bold":true,"color":"red","text":"レッドストーン鉱石"},{"bold":true,"color":"white","text":" チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=redstone]"}]
# execute if score 黄 pvp_advance matches 5 run tellraw @a [{"bold":true,"color":"yellow","text":"黄"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":true,"color":"dark_green","text":"エメラルド鉱石"}]
# execute if score 黄 pvp_advance matches 6 run tellraw @a [{"bold":true,"color":"blue","text":"ラピスラズリ鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=lapis_lazuli]"}]
# execute if score 黄 pvp_advance matches 7 run tellraw @a [{"bold":true,"color":"yellow","text":"黄"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":true,"color":"aqua","text":"ダイヤモンド鉱石"}]

# execute if score 紫 pvp_advance matches 1 run tellraw @a [{"bold":true,"color":"white","text":"鉄鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=iron]"}]
# execute if score 紫 pvp_advance matches 2 run tellraw @a [{"bold":true,"color":"gold","text":"銅鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=copper]"}]
# execute if score 紫 pvp_advance matches 3 run tellraw @a [{"bold":true,"color":"yellow","text":"金鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=gold]"}]
# execute if score 紫 pvp_advance matches 4 run tellraw @a [{"bold":true,"color":"red","text":"レッドストーン鉱石"},{"bold":true,"color":"white","text":" チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=redstone]"}]
# execute if score 紫 pvp_advance matches 5 run tellraw @a [{"bold":true,"color":"light_purple","text":"紫"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":true,"color":"dark_green","text":"エメラルド鉱石"}]
# execute if score 紫 pvp_advance matches 6 run tellraw @a [{"bold":true,"color":"blue","text":"ラピスラズリ鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=lapis_lazuli]"}]
# execute if score 紫 pvp_advance matches 7 run tellraw @a [{"bold":true,"color":"light_purple","text":"紫"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":true,"color":"aqua","text":"ダイヤモンド鉱石"}]

# execute if score 水色 pvp_advance matches 1 run tellraw @a [{"bold":true,"color":"white","text":"鉄鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=iron]"}]
# execute if score 水色 pvp_advance matches 2 run tellraw @a [{"bold":true,"color":"gold","text":"銅鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=copper]"}]
# execute if score 水色 pvp_advance matches 3 run tellraw @a [{"bold":true,"color":"yellow","text":"金鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=gold]"}]
# execute if score 水色 pvp_advance matches 4 run tellraw @a [{"bold":true,"color":"red","text":"レッドストーン鉱石"},{"bold":true,"color":"white","text":" チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=redstone]"}]
# execute if score 水色 pvp_advance matches 5 run tellraw @a [{"bold":true,"color":"aqua","text":"水色"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":true,"color":"dark_green","text":"エメラルド鉱石"}]
# execute if score 水色 pvp_advance matches 6 run tellraw @a [{"bold":true,"color":"blue","text":"ラピスラズリ鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=lapis_lazuli]"}]
# execute if score 水色 pvp_advance matches 7 run tellraw @a [{"bold":true,"color":"aqua","text":"水色"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":true,"color":"aqua","text":"ダイヤモンド鉱石"}]

# execute if score 緑 pvp_advance matches 1 run tellraw @a [{"bold":true,"color":"white","text":"鉄鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=iron]"}]
# execute if score 緑 pvp_advance matches 2 run tellraw @a [{"bold":true,"color":"gold","text":"銅鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=copper]"}]
# execute if score 緑 pvp_advance matches 3 run tellraw @a [{"bold":true,"color":"yellow","text":"金鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=gold]"}]
# execute if score 緑 pvp_advance matches 4 run tellraw @a [{"bold":true,"color":"red","text":"レッドストーン鉱石"},{"bold":true,"color":"white","text":" チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=redstone]"}]
# execute if score 緑 pvp_advance matches 5 run tellraw @a [{"bold":true,"color":"green","text":"緑"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":true,"color":"dark_green","text":"エメラルド鉱石"}]
# execute if score 緑 pvp_advance matches 6 run tellraw @a [{"bold":true,"color":"blue","text":"ラピスラズリ鉱石"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":false,"color":"white","selector":"@a[team=lapis_lazuli]"}]
# execute if score 緑 pvp_advance matches 7 run tellraw @a [{"bold":true,"color":"green","text":"緑"},{"bold":true,"color":"white","text":"チーム"},{"bold":true,"color":"gray","text":"　→→→　"},{"bold":true,"color":"aqua","text":"ダイヤモンド鉱石"}]

# execute if score オレンジ pvp_advance matches 1 run 
# execute if score オレンジ pvp_advance matches 2 run 
# execute if score オレンジ pvp_advance matches 4 run 
# execute if score オレンジ pvp_advance matches 5 run 
# execute if score オレンジ pvp_advance matches 6 run 
# execute if score オレンジ pvp_advance matches 7 run 

execute as @a[team=member] if entity @s[team=iron] run tellraw @s [{"bold":false,"color":"white","text":"\nあなたのチームの担当鉱石は"},{"bold":true,"color":"white","text":" 鉄鉱石 "},{"bold":false,"color":"white","text":"でした"}]
execute as @a[team=member] if entity @s[team=copper] run tellraw @s [{"bold":false,"color":"white","text":"\nあなたのチームの担当鉱石は"},{"bold":true,"color":"gold","text":" 銅鉱石 "},{"bold":false,"color":"white","text":"でした"}]
execute as @a[team=member] if entity @s[team=gold] run tellraw @s [{"bold":false,"color":"white","text":"\nあなたのチームの担当鉱石は"},{"bold":true,"color":"yellow","text":" 金鉱石 "},{"bold":false,"color":"white","text":"でした"}]
execute as @a[team=member] if entity @s[team=redstone] run tellraw @s [{"bold":false,"color":"white","text":"\nあなたのチームの担当鉱石は"},{"bold":true,"color":"red","text":" レッドストーン鉱石 "},{"bold":false,"color":"white","text":"でした"}]
execute as @a[team=member] if entity @s[team=emerald] run tellraw @s [{"bold":false,"color":"white","text":"\nあなたのチームの担当鉱石は"},{"bold":true,"color":"dark_green","text":" エメラルド鉱石 "},{"bold":false,"color":"white","text":"でした"}]
execute as @a[team=member] if entity @s[team=lapis_lazuli] run tellraw @s [{"bold":false,"color":"white","text":"\nあなたのチームの担当鉱石は"},{"bold":true,"color":"blue","text":" ラピスラズリ鉱石 "},{"bold":false,"color":"white","text":"でした"}]
execute as @a[team=member] if entity @s[team=diamond] run tellraw @s [{"bold":false,"color":"white","text":"\nあなたのチームの担当鉱石は"},{"bold":true,"color":"aqua","text":" ダイヤモンド鉱石 "},{"bold":false,"color":"white","text":"でした"}]

scoreboard players set 状況 pvp_advance 3
execute if score オート進行 pvp_advance matches 1 run schedule function pvp:announce/lc_join 15s replace
execute if score オート進行 pvp_advance matches 0 run tellraw @a[team=gm] [{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"このメッセージはGMのみに送信されています","color":"aqua"}]},"text":"["},{"bold":false,"color":"green","hoverEvent":{"action":"show_text","value":[{"text":"このメッセージはGMのみに送信されています","color":"aqua"}]},"text":"GM"},{"color":"gray","hoverEvent":{"action":"show_text","value":[{"text":"このメッセージはGMのみに送信されています","color":"aqua"}]},"text":"]　"},{"bold":true,"color":"white","hoverEvent":{"action":"show_text","value":""},"text":"フェーズ1終了。"},{"bold":true,"color":"white","text":"\n次に進む場合は"},{"bold":true,"color":"dark_red","text":"進行"},{"bold":true,"color":"white","text":"ページから"},{"bold":true,"color":"red","text":" フェーズ2 "},{"bold":true,"color":"white","text":"を実行してください！"}]