# スタート直後開始
bossbar set minecraft:timer name [{"bold":true,"color":"green","text":"戦闘開始！"},{"bold":true,"color":"yellow","text":"　制限時間"},{"bold":true,"color":"gray","text":"："},{"bold":false,"color":"aqua","score":{"name":"タイマー","objective":"pvp_advance"}}]
bossbar set minecraft:timer players @a
bossbar set minecraft:timer visible true
scoreboard players add 内部タイマー pvp_advance 1
scoreboard players add チェストタイマー pvp_advance 1
execute if score チェストタイマー pvp_advance matches 3600.. run function pvp:chest/chest_main
execute store result bossbar minecraft:timer value run scoreboard players get タイマー pvp_advance
execute if score 内部タイマー pvp_advance matches 20.. run function pvp:timer
execute if score 安地状態 pvp_advance matches 1 run function pvp:advance/actionbar
execute if score 安地状態 pvp_advance matches 2..3 run function pvp:advance/actionbar2
execute as @a run function pvp:xp/main
execute if score チェストタイマー pvp_advance matches 3600.. run scoreboard players reset チェストタイマー pvp_advance
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:iron_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/iron
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:copper_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/copper
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:gold_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/gold
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:redstone_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/redstone
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:emerald_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/emerald
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:lapis_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/lapis_lazuli
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/diamond
