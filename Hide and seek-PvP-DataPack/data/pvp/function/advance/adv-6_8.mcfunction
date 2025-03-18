# スタート直後開始
bossbar set minecraft:timer name [{"bold":true,"color":"green","text":"戦闘開始！"},{"bold":true,"color":"yellow","text":"　制限時間"},{"bold":true,"color":"gray","text":"："},{"color":"aqua","score":{"name":"タイマー","objective":"pvp_advance"}}]
bossbar set minecraft:timer players @a
bossbar set minecraft:timer visible true
scoreboard players add 内部タイマー pvp_advance 1
execute store result bossbar minecraft:timer value run scoreboard players get タイマー pvp_advance
execute if score 内部タイマー pvp_advance matches 20.. run function pvp:timer
function pvp:advance/actionbar
execute as @a run function pvp:xp/main
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/iron
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/copper
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/gold
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/redstone
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/emerald
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/lapis_lazuli
execute as @a[team=diamond] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_ore"}}] unless score @s PvP_Item_ore matches ..0 run function pvp:ore/diamond
# pvp_advance
# 安地タイマー
# 分：安地分　秒：安地秒


# 参加人数：人数　生存人数：生存