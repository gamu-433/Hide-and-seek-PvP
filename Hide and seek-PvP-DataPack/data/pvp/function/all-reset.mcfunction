# gameruleの設定を追加する

# スコアボード等定義
scoreboard objectives remove pvp_advance
scoreboard objectives add pvp_advance dummy
data merge storage ore {all:["鉄","銅","金","レッドストーン","エメラルド","ラピスラズリ","ダイヤモンド"]}

# スコアボード設定
scoreboard players set 状況 0
scoreboard players set タイマー 0
scoreboard players set 鉱石抽選 pvp_advance 0

# 最後に追加する　function pvp:team/team-reset
