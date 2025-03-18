execute in minecraft:overworld run setblock 0 200 0 air
execute in minecraft:overworld run setblock 1 200 0 air
execute in minecraft:overworld run setblock 0 200 0 command_block{Command:"mvdelete pvp"} replace
execute in minecraft:overworld run setblock 1 200 0 minecraft:redstone_block
execute in minecraft:overworld run setblock 0 200 -1 air
execute in minecraft:overworld run setblock -1 200 -1 air
execute in minecraft:overworld run setblock 0 200 -1 command_block{Command:"mvconfirm"} replace
execute in minecraft:overworld run setblock -1 200 -1 minecraft:redstone_block
schedule function pvp:world/create 20s replace