bossbar set minecraft:timer color green
bossbar set minecraft:timer max 60
bossbar set minecraft:timer players @a
scoreboard players set タイマー pvp_advance 60
scoreboard players set @a[team=member] PvP_Item_ore 100
execute as @a at @s run playsound minecraft:custom.levelup master @s ~ ~ ~ 1 1
effect give @a[team=member] minecraft:saturation 60 1 true
effect give @a[team=member] minecraft:instant_health 60 1 true
execute as @a[team=member] at @s unless entity @s[tag=no_clear_item] run clear @s