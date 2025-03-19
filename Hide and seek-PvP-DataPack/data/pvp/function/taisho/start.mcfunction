tellraw @a[scores={pvp_advance=1..2}] {"text":"大将を抽選しています...","color":"green","bold":true}
execute as @r[team=iron] run scoreboard players set @s pvp_advance 2
execute as @r[team=copper] run scoreboard players set @s pvp_advance 2
execute as @r[team=gold] run scoreboard players set @s pvp_advance 2
execute as @r[team=redstone] run scoreboard players set @s pvp_advance 2
execute as @r[team=emerald] run scoreboard players set @s pvp_advance 2
execute as @r[team=lapis_lazuli] run scoreboard players set @s pvp_advance 2
execute as @r[team=diamond] run scoreboard players set @s pvp_advance 2
execute as @a[scores={pvp_advance=1..2}] at @s run playsound minecraft:custom.levelup master @s ~ ~ ~ 1 1
schedule function pvp:taisho/second 4s replace