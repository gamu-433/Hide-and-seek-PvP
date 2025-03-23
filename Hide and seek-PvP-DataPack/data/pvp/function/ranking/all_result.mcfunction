# 一時的なスコアボードを作成
scoreboard objectives add Ranking dummy
scoreboard objectives add CurrentRank dummy
scoreboard objectives add TempScore dummy

# 一時スコアボードに各鉱石のスコアを複製
scoreboard players operation 鉄鉱石 TempScore = 鉄鉱石 PvP_points
scoreboard players operation 銅鉱石 TempScore = 銅鉱石 PvP_points
scoreboard players operation 金鉱石 TempScore = 金鉱石 PvP_points
scoreboard players operation ラピスラズリ TempScore = ラピスラズリ PvP_points
scoreboard players operation エメラルド TempScore = エメラルド PvP_points
scoreboard players operation ダイヤモンド TempScore = ダイヤモンド PvP_points
scoreboard players operation レッドストーン TempScore = レッドストーン PvP_points

# 初期順位を7に設定（降順）
scoreboard players set 鉄鉱石 Ranking 7
scoreboard players set 銅鉱石 Ranking 7
scoreboard players set 金鉱石 Ranking 7
scoreboard players set ラピスラズリ Ranking 7
scoreboard players set エメラルド Ranking 7
scoreboard players set ダイヤモンド Ranking 7
scoreboard players set レッドストーン Ranking 7

# 現在のランク計算用の変数
scoreboard players set #1 CurrentRank 1
scoreboard players set #2 CurrentRank 2
scoreboard players set #3 CurrentRank 3
scoreboard players set #4 CurrentRank 4
scoreboard players set #5 CurrentRank 5
scoreboard players set #6 CurrentRank 6
scoreboard players set #7 CurrentRank 7

# ランキング計算処理（全ての組み合わせでスコアを比較して順位を計算）
# 鉄鉱石と他のすべての鉱石を比較
execute if score 鉄鉱石 TempScore > 銅鉱石 TempScore run scoreboard players remove 鉄鉱石 Ranking 1
execute if score 鉄鉱石 TempScore > 金鉱石 TempScore run scoreboard players remove 鉄鉱石 Ranking 1
execute if score 鉄鉱石 TempScore > ラピスラズリ TempScore run scoreboard players remove 鉄鉱石 Ranking 1
execute if score 鉄鉱石 TempScore > エメラルド TempScore run scoreboard players remove 鉄鉱石 Ranking 1
execute if score 鉄鉱石 TempScore > ダイヤモンド TempScore run scoreboard players remove 鉄鉱石 Ranking 1
execute if score 鉄鉱石 TempScore > レッドストーン TempScore run scoreboard players remove 鉄鉱石 Ranking 1

# 銅鉱石と他のすべての鉱石を比較
execute if score 銅鉱石 TempScore > 鉄鉱石 TempScore run scoreboard players remove 銅鉱石 Ranking 1
execute if score 銅鉱石 TempScore > 金鉱石 TempScore run scoreboard players remove 銅鉱石 Ranking 1
execute if score 銅鉱石 TempScore > ラピスラズリ TempScore run scoreboard players remove 銅鉱石 Ranking 1
execute if score 銅鉱石 TempScore > エメラルド TempScore run scoreboard players remove 銅鉱石 Ranking 1
execute if score 銅鉱石 TempScore > ダイヤモンド TempScore run scoreboard players remove 銅鉱石 Ranking 1
execute if score 銅鉱石 TempScore > レッドストーン TempScore run scoreboard players remove 銅鉱石 Ranking 1

# 金鉱石と他のすべての鉱石を比較
execute if score 金鉱石 TempScore > 鉄鉱石 TempScore run scoreboard players remove 金鉱石 Ranking 1
execute if score 金鉱石 TempScore > 銅鉱石 TempScore run scoreboard players remove 金鉱石 Ranking 1
execute if score 金鉱石 TempScore > ラピスラズリ TempScore run scoreboard players remove 金鉱石 Ranking 1
execute if score 金鉱石 TempScore > エメラルド TempScore run scoreboard players remove 金鉱石 Ranking 1
execute if score 金鉱石 TempScore > ダイヤモンド TempScore run scoreboard players remove 金鉱石 Ranking 1
execute if score 金鉱石 TempScore > レッドストーン TempScore run scoreboard players remove 金鉱石 Ranking 1

# ラピスラズリと他のすべての鉱石を比較
execute if score ラピスラズリ TempScore > 鉄鉱石 TempScore run scoreboard players remove ラピスラズリ Ranking 1
execute if score ラピスラズリ TempScore > 銅鉱石 TempScore run scoreboard players remove ラピスラズリ Ranking 1
execute if score ラピスラズリ TempScore > 金鉱石 TempScore run scoreboard players remove ラピスラズリ Ranking 1
execute if score ラピスラズリ TempScore > エメラルド TempScore run scoreboard players remove ラピスラズリ Ranking 1
execute if score ラピスラズリ TempScore > ダイヤモンド TempScore run scoreboard players remove ラピスラズリ Ranking 1
execute if score ラピスラズリ TempScore > レッドストーン TempScore run scoreboard players remove ラピスラズリ Ranking 1

# エメラルドと他のすべての鉱石を比較
execute if score エメラルド TempScore > 鉄鉱石 TempScore run scoreboard players remove エメラルド Ranking 1
execute if score エメラルド TempScore > 銅鉱石 TempScore run scoreboard players remove エメラルド Ranking 1
execute if score エメラルド TempScore > 金鉱石 TempScore run scoreboard players remove エメラルド Ranking 1
execute if score エメラルド TempScore > ラピスラズリ TempScore run scoreboard players remove エメラルド Ranking 1
execute if score エメラルド TempScore > ダイヤモンド TempScore run scoreboard players remove エメラルド Ranking 1
execute if score エメラルド TempScore > レッドストーン TempScore run scoreboard players remove エメラルド Ranking 1

# ダイヤモンドと他のすべての鉱石を比較
execute if score ダイヤモンド TempScore > 鉄鉱石 TempScore run scoreboard players remove ダイヤモンド Ranking 1
execute if score ダイヤモンド TempScore > 銅鉱石 TempScore run scoreboard players remove ダイヤモンド Ranking 1
execute if score ダイヤモンド TempScore > 金鉱石 TempScore run scoreboard players remove ダイヤモンド Ranking 1
execute if score ダイヤモンド TempScore > ラピスラズリ TempScore run scoreboard players remove ダイヤモンド Ranking 1
execute if score ダイヤモンド TempScore > エメラルド TempScore run scoreboard players remove ダイヤモンド Ranking 1
execute if score ダイヤモンド TempScore > レッドストーン TempScore run scoreboard players remove ダイヤモンド Ranking 1

# レッドストーンと他のすべての鉱石を比較
execute if score レッドストーン TempScore > 鉄鉱石 TempScore run scoreboard players remove レッドストーン Ranking 1
execute if score レッドストーン TempScore > 銅鉱石 TempScore run scoreboard players remove レッドストーン Ranking 1
execute if score レッドストーン TempScore > 金鉱石 TempScore run scoreboard players remove レッドストーン Ranking 1
execute if score レッドストーン TempScore > ラピスラズリ TempScore run scoreboard players remove レッドストーン Ranking 1
execute if score レッドストーン TempScore > エメラルド TempScore run scoreboard players remove レッドストーン Ranking 1
execute if score レッドストーン TempScore > ダイヤモンド TempScore run scoreboard players remove レッドストーン Ranking 1

# 同点処理（同じスコアの場合、アルファベット順で後ろの鉱石の順位を調整）
execute if score 銅鉱石 TempScore = 鉄鉱石 TempScore run scoreboard players remove 銅鉱石 Ranking 1
execute if score 金鉱石 TempScore = 鉄鉱石 TempScore run scoreboard players remove 金鉱石 Ranking 1
execute if score 金鉱石 TempScore = 銅鉱石 TempScore run scoreboard players remove 金鉱石 Ranking 1
execute if score ラピスラズリ TempScore = 鉄鉱石 TempScore run scoreboard players remove ラピスラズリ Ranking 1
execute if score ラピスラズリ TempScore = 銅鉱石 TempScore run scoreboard players remove ラピスラズリ Ranking 1
execute if score ラピスラズリ TempScore = 金鉱石 TempScore run scoreboard players remove ラピスラズリ Ranking 1
execute if score エメラルド TempScore = 鉄鉱石 TempScore run scoreboard players remove エメラルド Ranking 1
execute if score エメラルド TempScore = 銅鉱石 TempScore run scoreboard players remove エメラルド Ranking 1
execute if score エメラルド TempScore = 金鉱石 TempScore run scoreboard players remove エメラルド Ranking 1
execute if score エメラルド TempScore = ラピスラズリ TempScore run scoreboard players remove エメラルド Ranking 1
execute if score ダイヤモンド TempScore = 鉄鉱石 TempScore run scoreboard players remove ダイヤモンド Ranking 1
execute if score ダイヤモンド TempScore = 銅鉱石 TempScore run scoreboard players remove ダイヤモンド Ranking 1
execute if score ダイヤモンド TempScore = 金鉱石 TempScore run scoreboard players remove ダイヤモンド Ranking 1
execute if score ダイヤモンド TempScore = ラピスラズリ TempScore run scoreboard players remove ダイヤモンド Ranking 1
execute if score ダイヤモンド TempScore = エメラルド TempScore run scoreboard players remove ダイヤモンド Ranking 1
execute if score レッドストーン TempScore = 鉄鉱石 TempScore run scoreboard players remove レッドストーン Ranking 1
execute if score レッドストーン TempScore = 銅鉱石 TempScore run scoreboard players remove レッドストーン Ranking 1
execute if score レッドストーン TempScore = 金鉱石 TempScore run scoreboard players remove レッドストーン Ranking 1
execute if score レッドストーン TempScore = ラピスラズリ TempScore run scoreboard players remove レッドストーン Ranking 1
execute if score レッドストーン TempScore = エメラルド TempScore run scoreboard players remove レッドストーン Ranking 1
execute if score レッドストーン TempScore = ダイヤモンド TempScore run scoreboard players remove レッドストーン Ranking 1

# ランキング表示（tellrawコマンドで各順位ごとに表示）
# 1位の表示
execute if score 鉄鉱石 Ranking = #1 CurrentRank run tellraw @a ["",{"text":"1位: ","color":"yellow"},{"text":"鉄鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"鉄鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score 銅鉱石 Ranking = #1 CurrentRank run tellraw @a ["",{"text":"1位: ","color":"yellow"},{"text":"銅鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"銅鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score 金鉱石 Ranking = #1 CurrentRank run tellraw @a ["",{"text":"1位: ","color":"yellow"},{"text":"金鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"金鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score ラピスラズリ Ranking = #1 CurrentRank run tellraw @a ["",{"text":"1位: ","color":"yellow"},{"text":"ラピスラズリ","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"ラピスラズリ","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score エメラルド Ranking = #1 CurrentRank run tellraw @a ["",{"text":"1位: ","color":"yellow"},{"text":"エメラルド","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"エメラルド","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score ダイヤモンド Ranking = #1 CurrentRank run tellraw @a ["",{"text":"1位: ","color":"yellow"},{"text":"ダイヤモンド","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"ダイヤモンド","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score レッドストーン Ranking = #1 CurrentRank run tellraw @a ["",{"text":"1位: ","color":"yellow"},{"text":"レッドストーン","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"レッドストーン","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]

# 2位の表示
execute if score 鉄鉱石 Ranking = #2 CurrentRank run tellraw @a ["",{"text":"2位: ","color":"aqua"},{"text":"鉄鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"鉄鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score 銅鉱石 Ranking = #2 CurrentRank run tellraw @a ["",{"text":"2位: ","color":"aqua"},{"text":"銅鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"銅鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score 金鉱石 Ranking = #2 CurrentRank run tellraw @a ["",{"text":"2位: ","color":"aqua"},{"text":"金鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"金鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score ラピスラズリ Ranking = #2 CurrentRank run tellraw @a ["",{"text":"2位: ","color":"aqua"},{"text":"ラピスラズリ","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"ラピスラズリ","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score エメラルド Ranking = #2 CurrentRank run tellraw @a ["",{"text":"2位: ","color":"aqua"},{"text":"エメラルド","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"エメラルド","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score ダイヤモンド Ranking = #2 CurrentRank run tellraw @a ["",{"text":"2位: ","color":"aqua"},{"text":"ダイヤモンド","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"ダイヤモンド","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score レッドストーン Ranking = #2 CurrentRank run tellraw @a ["",{"text":"2位: ","color":"aqua"},{"text":"レッドストーン","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"レッドストーン","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]

# 3位の表示
execute if score 鉄鉱石 Ranking = #3 CurrentRank run tellraw @a ["",{"text":"3位: ","color":"light_purple"},{"text":"鉄鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"鉄鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score 銅鉱石 Ranking = #3 CurrentRank run tellraw @a ["",{"text":"3位: ","color":"light_purple"},{"text":"銅鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"銅鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score 金鉱石 Ranking = #3 CurrentRank run tellraw @a ["",{"text":"3位: ","color":"light_purple"},{"text":"金鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"金鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score ラピスラズリ Ranking = #3 CurrentRank run tellraw @a ["",{"text":"3位: ","color":"light_purple"},{"text":"ラピスラズリ","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"ラピスラズリ","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score エメラルド Ranking = #3 CurrentRank run tellraw @a ["",{"text":"3位: ","color":"light_purple"},{"text":"エメラルド","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"エメラルド","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score ダイヤモンド Ranking = #3 CurrentRank run tellraw @a ["",{"text":"3位: ","color":"light_purple"},{"text":"ダイヤモンド","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"ダイヤモンド","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score レッドストーン Ranking = #3 CurrentRank run tellraw @a ["",{"text":"3位: ","color":"light_purple"},{"text":"レッドストーン","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"レッドストーン","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]

# 4位の表示
execute if score 鉄鉱石 Ranking = #4 CurrentRank run tellraw @a ["",{"text":"4位: ","color":"dark_gray"},{"text":"鉄鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"鉄鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score 銅鉱石 Ranking = #4 CurrentRank run tellraw @a ["",{"text":"4位: ","color":"dark_gray"},{"text":"銅鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"銅鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score 金鉱石 Ranking = #4 CurrentRank run tellraw @a ["",{"text":"4位: ","color":"dark_gray"},{"text":"金鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"金鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score ラピスラズリ Ranking = #4 CurrentRank run tellraw @a ["",{"text":"4位: ","color":"dark_gray"},{"text":"ラピスラズリ","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"ラピスラズリ","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score エメラルド Ranking = #4 CurrentRank run tellraw @a ["",{"text":"4位: ","color":"dark_gray"},{"text":"エメラルド","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"エメラルド","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score ダイヤモンド Ranking = #4 CurrentRank run tellraw @a ["",{"text":"4位: ","color":"dark_gray"},{"text":"ダイヤモンド","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"ダイヤモンド","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score レッドストーン Ranking = #4 CurrentRank run tellraw @a ["",{"text":"4位: ","color":"dark_gray"},{"text":"レッドストーン","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"レッドストーン","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]

# 5位の表示
execute if score 鉄鉱石 Ranking = #5 CurrentRank run tellraw @a ["",{"text":"5位: ","color":"dark_gray"},{"text":"鉄鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"鉄鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score 銅鉱石 Ranking = #5 CurrentRank run tellraw @a ["",{"text":"5位: ","color":"dark_gray"},{"text":"銅鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"銅鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score 金鉱石 Ranking = #5 CurrentRank run tellraw @a ["",{"text":"5位: ","color":"dark_gray"},{"text":"金鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"金鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score ラピスラズリ Ranking = #5 CurrentRank run tellraw @a ["",{"text":"5位: ","color":"dark_gray"},{"text":"ラピスラズリ","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"ラピスラズリ","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score エメラルド Ranking = #5 CurrentRank run tellraw @a ["",{"text":"5位: ","color":"dark_gray"},{"text":"エメラルド","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"エメラルド","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score ダイヤモンド Ranking = #5 CurrentRank run tellraw @a ["",{"text":"5位: ","color":"dark_gray"},{"text":"ダイヤモンド","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"ダイヤモンド","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score レッドストーン Ranking = #5 CurrentRank run tellraw @a ["",{"text":"5位: ","color":"dark_gray"},{"text":"レッドストーン","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"レッドストーン","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]

# 6位の表示
execute if score 鉄鉱石 Ranking = #6 CurrentRank run tellraw @a ["",{"text":"6位: ","color":"dark_gray"},{"text":"鉄鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"鉄鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score 銅鉱石 Ranking = #6 CurrentRank run tellraw @a ["",{"text":"6位: ","color":"dark_gray"},{"text":"銅鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"銅鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score 金鉱石 Ranking = #6 CurrentRank run tellraw @a ["",{"text":"6位: ","color":"dark_gray"},{"text":"金鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"金鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score ラピスラズリ Ranking = #6 CurrentRank run tellraw @a ["",{"text":"6位: ","color":"dark_gray"},{"text":"ラピスラズリ","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"ラピスラズリ","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score エメラルド Ranking = #6 CurrentRank run tellraw @a ["",{"text":"6位: ","color":"dark_gray"},{"text":"エメラルド","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"エメラルド","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score ダイヤモンド Ranking = #6 CurrentRank run tellraw @a ["",{"text":"6位: ","color":"dark_gray"},{"text":"ダイヤモンド","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"ダイヤモンド","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score レッドストーン Ranking = #6 CurrentRank run tellraw @a ["",{"text":"6位: ","color":"dark_gray"},{"text":"レッドストーン","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"レッドストーン","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]

# 7位の表示
execute if score 鉄鉱石 Ranking = #7 CurrentRank run tellraw @a ["",{"text":"7位: ","color":"dark_gray"},{"text":"鉄鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"鉄鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score 銅鉱石 Ranking = #7 CurrentRank run tellraw @a ["",{"text":"7位: ","color":"dark_gray"},{"text":"銅鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"銅鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score 金鉱石 Ranking = #7 CurrentRank run tellraw @a ["",{"text":"7位: ","color":"dark_gray"},{"text":"金鉱石","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"金鉱石","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score ラピスラズリ Ranking = #7 CurrentRank run tellraw @a ["",{"text":"7位: ","color":"dark_gray"},{"text":"ラピスラズリ","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"ラピスラズリ","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score エメラルド Ranking = #7 CurrentRank run tellraw @a ["",{"text":"7位: ","color":"dark_gray"},{"text":"エメラルド","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"エメラルド","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score ダイヤモンド Ranking = #7 CurrentRank run tellraw @a ["",{"text":"7位: ","color":"dark_gray"},{"text":"ダイヤモンド","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"ダイヤモンド","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]
execute if score レッドストーン Ranking = #7 CurrentRank run tellraw @a ["",{"text":"7位: ","color":"dark_gray"},{"text":"レッドストーン","color":"white"},{"text":"（","color":"gray"},{"score":{"name":"レッドストーン","objective":"PvP_points"},"color":"yellow"},{"text":"ポイント）","color":"gray"}]

# 一時スコアボードを削除
scoreboard objectives remove Ranking
scoreboard objectives remove CurrentRank
scoreboard objectives remove TempScore

# scoreboard objectives add PvP_kill dummy