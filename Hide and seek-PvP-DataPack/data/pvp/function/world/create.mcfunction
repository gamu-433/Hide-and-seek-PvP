execute in minecraft:overworld run setblock 0 200 -1 air
execute in minecraft:overworld run setblock -1 200 -1 air
execute in minecraft:overworld run setblock 0 200 0 air
execute in minecraft:overworld run setblock 1 200 0 air
execute in minecraft:overworld run setblock 0 200 0 command_block{Command:"mvcreate pvp world"} replace
execute in minecraft:overworld run setblock 1 200 0 minecraft:redstone_block
schedule function pvp:world/end 30s replace