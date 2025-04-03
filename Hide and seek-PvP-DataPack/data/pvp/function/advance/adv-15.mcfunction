# サドンモード
bossbar set minecraft:timer name [{"bold":true,"color":"green","text":"戦闘開始！"},{"color":"gold","text":" サドンデスモード突入！"}]
bossbar set minecraft:timer players @a
bossbar set minecraft:timer visible true
bossbar set minecraft:timer max 1
scoreboard players add 内部タイマー pvp_advance 1
scoreboard players add チェストタイマー pvp_advance 1
scoreboard players add 座標タイマー pvp_advance 1
execute if score チェストタイマー pvp_advance matches 3600.. run function pvp:chest/chest_main
execute if score 座標タイマー pvp_advance matches 6000.. run function pvp:location/main
bossbar set minecraft:timer value 1
execute if score 内部タイマー pvp_advance matches 20.. run function pvp:timer
execute if score 安地状態 pvp_advance matches 1 run function pvp:advance/actionbar
execute if score 安地状態 pvp_advance matches 2..3 run function pvp:advance/actionbar2
gamemode spectator @a[scores={pvp_advance=3}]
execute as @a run function pvp:xp/main
execute if score チェストタイマー pvp_advance matches 3600.. run scoreboard players reset チェストタイマー pvp_advance
execute if score 座標タイマー pvp_advance matches 6000.. run scoreboard players reset 座標タイマー pvp_advance
execute as @a[scores={pvp_advance=1..2}] unless score @s PvP_effect matches ..0 run effect give @s minecraft:resistance 5 5 true
execute as @a[scores={pvp_advance=1..2}] unless score @s PvP_effect matches ..0 run scoreboard players remove @s PvP_effect 1
execute as @a[scores={pvp_advance=1}] if entity @s[scores={PvP_deathcount=1..}] run function pvp:death
function pvp:item/main
effect give @a[scores={pvp_advance=1..2}] minecraft:glowing 30 1 true
execute as @a[scores={pvp_advance=1..2}] at @s if entity @s[scores={death_main=1..}] run function pvp:dead/main
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/iron
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:copper_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/copper
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:gold_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/gold
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:redstone_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/redstone
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:emerald_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/emerald
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:lapis_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/lapis_lazuli
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/diamond
execute as @a[scores={pvp_advance=1..2}] if entity @s[y=30,dy=-30] run kill @s
execute if score 居残り順位 pvp_advance matches 1 run function pvp:ending
kill @e[type=arrow,nbt={inGround:1b}]
execute as @a[scores={pvp_advance=1..2}] at @s if entity @s[y=40,dy=-100] run effect give @s minecraft:glowing 5 1 true
function pvp:ore/recovery