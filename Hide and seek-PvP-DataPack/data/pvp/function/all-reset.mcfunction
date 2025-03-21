# gameruleの設定を追加する

# スコアボード等定義
scoreboard objectives remove pvp_advance
scoreboard objectives remove pvp_kouseki_k1
scoreboard objectives remove pvp_ore_team
scoreboard objectives remove PvP_Item_ore
scoreboard objectives remove PvP_Item_ore2
scoreboard objectives remove PvP_Item_ore3
kill @e[tag=chest1_1_1]
kill @e[tag=chest1_1]
kill @e[tag=chest1]
kill @e[tag=chest2_1_1]
kill @e[tag=chest2_1]
kill @e[tag=chest2]
kill @e[tag=chest3_1_1]
kill @e[tag=chest3_1]
kill @e[tag=chest3]
kill @e[tag=chest4_1_1]
kill @e[tag=chest4_1]
kill @e[tag=chest4]
kill @e[tag=chest5_1_1]
kill @e[tag=chest5_1]
kill @e[tag=chest5]
kill @e[tag=chest6_1_1]
kill @e[tag=chest6_1]
kill @e[tag=chest6]
bossbar remove minecraft:timer
advancement revoke @a from pvp:int_click

scoreboard objectives add pvp_advance dummy
scoreboard objectives add pvp_ore_team dummy
scoreboard objectives add PvP_xpbar dummy
scoreboard objectives add PvP_Item_ore dummy
scoreboard objectives add PvP_Item_ore2 dummy
scoreboard objectives add PvP_Item_ore3 dummy
scoreboard objectives add PvP_XPPoints dummy
scoreboard objectives add PvP_XPLevels dummy
forceload add 0 0 1 1
bossbar add minecraft:timer "a"

data merge storage ore {all:["鉄","銅","金","レッドストーン","エメラルド","ラピスラズリ","ダイヤモンド"]}
bossbar add timer "タイマー"


# スコアボード設定
scoreboard players set 状況 pvp_advance 0
scoreboard players set タイマー pvp_advance 0
scoreboard players set 鉱石抽選 pvp_advance 0

# 最後に追加する　function pvp:team/team-reset


