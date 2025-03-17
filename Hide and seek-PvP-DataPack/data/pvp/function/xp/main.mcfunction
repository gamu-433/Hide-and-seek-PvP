# レベル129 はポイントが 0~1002
xp set @s 129 levels
scoreboard players set #1000 PvP_xpbar 1000
scoreboard players set #7 PvP_xpbar 7
scoreboard players set #100 PvP_xpbar 100
execute store result score @s PvP_XPPoints run xp query @s points
# MPの割合(0~1000%)との違いを用いて「経験値」に代入する値を求める
scoreboard players operation @s PvP_xpbar = @s PvP_Item_ore
scoreboard players operation @s PvP_xpbar *= #1000 PvP_xpbar
scoreboard players operation @s PvP_xpbar /= #100 PvP_xpbar
scoreboard players operation @s PvP_xpbar -= @s PvP_XPPoints
scoreboard players operation @s PvP_xpbar /= #7 PvP_xpbar
scoreboard players operation @s PvP_XPPoints += @s PvP_xpbar
# スコアの値を「経験値」に代入
xp set @s 0 points
execute if score @s PvP_XPPoints matches 512.. run xp add @s 512 points
execute if score @s PvP_XPPoints matches 512.. run scoreboard players remove @s PvP_XPPoints 512
execute if score @s PvP_XPPoints matches 256.. run xp add @s 256 points
execute if score @s PvP_XPPoints matches 256.. run scoreboard players remove @s PvP_XPPoints 256
execute if score @s PvP_XPPoints matches 128.. run xp add @s 128 points
execute if score @s PvP_XPPoints matches 128.. run scoreboard players remove @s PvP_XPPoints 128
execute if score @s PvP_XPPoints matches 64.. run xp add @s 64 points
execute if score @s PvP_XPPoints matches 64.. run scoreboard players remove @s PvP_XPPoints 64
execute if score @s PvP_XPPoints matches 32.. run xp add @s 32 points
execute if score @s PvP_XPPoints matches 32.. run scoreboard players remove @s PvP_XPPoints 32
execute if score @s PvP_XPPoints matches 16.. run xp add @s 16 points
execute if score @s PvP_XPPoints matches 16.. run scoreboard players remove @s PvP_XPPoints 16
execute if score @s PvP_XPPoints matches 8.. run xp add @s 8 points
execute if score @s PvP_XPPoints matches 8.. run scoreboard players remove @s PvP_XPPoints 8
execute if score @s PvP_XPPoints matches 4.. run xp add @s 4 points
execute if score @s PvP_XPPoints matches 4.. run scoreboard players remove @s PvP_XPPoints 4
execute if score @s PvP_XPPoints matches 2.. run xp add @s 2 points
execute if score @s PvP_XPPoints matches 2.. run scoreboard players remove @s PvP_XPPoints 2
execute if score @s PvP_XPPoints matches 1.. run xp add @s 1 points
execute if score @s PvP_XPPoints matches 1.. run scoreboard players remove @s PvP_XPPoints 1
# スコアの値を「レベルの値」に代入
xp set @s 0 levels
scoreboard players operation @s PvP_XPLevels = @s PvP_Item_ore
execute if score @s PvP_XPLevels matches 128.. run xp add @s 128 levels
execute if score @s PvP_XPLevels matches 128.. run scoreboard players remove @s PvP_XPLevels 128
execute if score @s PvP_XPLevels matches 64.. run xp add @s 64 levels
execute if score @s PvP_XPLevels matches 64.. run scoreboard players remove @s PvP_XPLevels 64
execute if score @s PvP_XPLevels matches 32.. run xp add @s 32 levels
execute if score @s PvP_XPLevels matches 32.. run scoreboard players remove @s PvP_XPLevels 32
execute if score @s PvP_XPLevels matches 16.. run xp add @s 16 levels
execute if score @s PvP_XPLevels matches 16.. run scoreboard players remove @s PvP_XPLevels 16
execute if score @s PvP_XPLevels matches 8.. run xp add @s 8 levels
execute if score @s PvP_XPLevels matches 8.. run scoreboard players remove @s PvP_XPLevels 8
execute if score @s PvP_XPLevels matches 4.. run xp add @s 4 levels
execute if score @s PvP_XPLevels matches 4.. run scoreboard players remove @s PvP_XPLevels 4
execute if score @s PvP_XPLevels matches 2.. run xp add @s 2 levels
execute if score @s PvP_XPLevels matches 2.. run scoreboard players remove @s PvP_XPLevels 2
execute if score @s PvP_XPLevels matches 1.. run xp add @s 1 levels
execute if score @s PvP_XPLevels matches 1.. run scoreboard players remove @s PvP_XPLevels 1
# リセット
scoreboard players reset @s PvP_XPLevels
scoreboard players reset @s PvP_XPPoints
scoreboard players reset @s PvP_xpbar