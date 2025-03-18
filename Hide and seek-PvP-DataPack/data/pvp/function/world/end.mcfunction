execute in minecraft:pvp run worldborder center 0 0
execute in minecraft:pvp run worldborder set 500
tellraw @a {"text":"ワールドの再生成が完了しました！","color":"green","bold":true}
execute as @a at @s run playsound minecraft:block.note_block.banjo master @s ~ ~ ~ 1 2
execute in minecraft:overworld run setblock 0 200 0 air
execute in minecraft:overworld run setblock 1 200 0 air